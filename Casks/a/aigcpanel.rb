cask "aigcpanel" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.0"
  sha256 arm:          "3b64adf02ff83c0d09dc0bb4f7342bb6997ac9d02161b004247cca24bcf88f12",
         intel:        "cd95495759bb518a1bebd0c9533a1f0827996abfef5f7a7c15b17c664e35232a",
         arm64_linux:  "7e09c6131a7ec45b574d50a1fefd0ea7d79982808312c18c004f08e4306403b4",
         x86_64_linux: "8c509bbed3ba5736b206ea93c10f0181d18e2c84e733f10895501ffa80774ba6"

  on_macos do
    app "AigcPanel.app"

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
