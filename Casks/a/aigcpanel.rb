cask "aigcpanel" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.6.0"
  sha256 arm:          "09e47cf83352063567bd0d05f3edcbff861d54713c8359c3c3eecd207db95c86",
         intel:        "8c99ca3d4ed59a8d7d2f2fefb826731c7ca94976c34fbe27ea25d5f0ca6f6ec5",
         arm64_linux:  "78a6ff101e60e2a57fa8bb673d89bbf4539b91b18da77a3583f810999b0a6c56",
         x86_64_linux: "8a7964ad1d3bbf64eb61cac569f73a69c41a077169771c039dca83c8dd5786fa"

  on_macos do
    app "AigcPanel.app"

    uninstall quit: "AigcPanel"

    zap trash: [
      "~/Library/Application Support/aigcpanel",
      "~/Library/Preferences/AigcPanel.plist",
      "~/Library/Saved Application State/AigcPanel.savedState",
    ]
  end
  on_linux do
    app_image "AigcPanel-#{version.csv.second || version.csv.first}-linux-#{arch}.AppImage",
              target: "AigcPanel.AppImage"
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
