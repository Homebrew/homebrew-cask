cask "electerm" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.5.66"
  sha256 arm:          "eb59a965921c54bba356b7f3952fd5ffe6a4b2d7cbbe7c5828b76e944eb3d88c",
         intel:        "4258dfa24280c587287eb40bfac04d7754e7e1a60de50fe9909da3a50c374aa9",
         arm64_linux:  "5807fe2a0300d4138d2f49034f24447fb8dcb76a2722c256fd85dd727453f902",
         x86_64_linux: "892722602b7e18d6ef9994cda9e41c0f95ebafefe023c38117e1367ed6ab119e"

  on_macos do
    depends_on macos: :monterey

    app "electerm.app"
    binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.electerm.electerm.sfl*",
      "~/Library/Application Support/electerm",
      "~/Library/Logs/electerm",
      "~/Library/Preferences/org.electerm.electerm.plist",
      "~/Library/Saved Application State/org.electerm.electerm.savedState",
    ]
  end
  on_linux do
    app_image "electerm-#{version}-linux-#{arch}.AppImage", target: "electerm.AppImage"

    zap trash: "~/.config/electerm"
  end

  url "https://mirror.electerm.org/https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-#{os}-#{arch}.#{url_end}"
  name "electerm"
  desc "Terminal/ssh/sftp/telnet/serialport/RDP/VNC/Spice/ftp client"
  homepage "https://electerm.org/"

  livecheck do
    url "https://electerm.org/data/electerm-github-release.json"
    strategy :json do |json|
      json.dig("release", "tag_name")&.sub("v", "")
    end
  end

  auto_updates true
end
