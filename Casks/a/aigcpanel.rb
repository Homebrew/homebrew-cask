cask "aigcpanel" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.3.0"
  sha256 arm:          "7964cd2c083f5f1daa5a5493ad7007a21da9807e08af9def8bb3d0f82b8a1203",
         intel:        "bb1096936fb2ba56395ad4108fa946e67fce3683689d774c143e8af37483fa21",
         arm64_linux:  "a305fe1e084a29c5e1ef16ed80fb400457f1542744bd7a009006c5efbfd14480",
         x86_64_linux: "7064574c72f5867c2f50b47103ab7663c55462ad13fa08349cc2ea3a8c6be8b1"

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
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
      end
    end
  end
end
