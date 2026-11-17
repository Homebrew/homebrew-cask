cask "aigcpanel" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.7.0"
  sha256 arm:          "e002ac444bd893f008889ad4671e875b070f6e4d42567f6f39b05540c74f26eb",
         intel:        "1c49599df2853038b77dc872f1ab018975c6da32381c2a16bdae586c905983c4",
         arm64_linux:  "f23f861b6fcc8083de307043f9663a25a9ec2300c57cef2c8f1956dcd6d9f5e4",
         x86_64_linux: "e4e027f75ef63c7eee842d4d7079f10033429c8a9757b0efb86c94708d6bb896"

  on_macos do
    app "AigcPanel.app"

    uninstall quit: "AigcPanel"

    zap trash: [
      "~/Library/Application Support/aigcpanel",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/aigcpanel.sfl*",
      "~/Library/Preferences/AigcPanel.plist",
      "~/Library/Saved Application State/AigcPanel.savedState",
    ]
  end
  on_linux do
    app_image "AigcPanel-#{version.csv.second || version.csv.first}-linux-#{arch}.AppImage",
              target: "AigcPanel.AppImage"

    zap trash: "~/.config/aigcpanel"
  end

  url "https://github.com/modstart-lib/aigcpanel/releases/download/v#{version.csv.first}/AigcPanel-#{version.csv.second || version.csv.first}-#{os}-#{arch}.#{url_end}"
  name "AigcPanel"
  desc "AI video, audio and broadcast generator"
  homepage "https://aigcpanel.com/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/AigcPanel[._-]v?(\d+(?:\.\d+)+)[._-]#{os}[._-]#{arch}\.#{url_end}}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end
end
