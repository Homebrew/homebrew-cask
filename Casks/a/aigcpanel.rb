cask "aigcpanel" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.0"
  sha256 arm:          "5ed88f3ab6ab9fbff56a4967d2d4bc74daff91c867bd4c32c05784d921d73a4a",
         intel:        "d25346bea12380e583e03e4ccb7b94ae7c1aed222fd13f910b23c18db419b7a1",
         arm64_linux:  "b7d4f7ba2b4ac17b0b6dab1a3a41a60b8b9622505e9f01ca58e8f6dc09b8d17c",
         x86_64_linux: "2afea5d4f14ec2343ceddcfe1b19a95dc1d8be3775c33585f36f64d6d2261819"

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
