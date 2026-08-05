cask "electerm" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.15.186"
  sha256 arm:          "9414b3008b8adc5c1a72916232b5314f20a2b33d8dc93fb0725a558acfce4fce",
         intel:        "be8fc5d533b3d0436b34cba18a684b1a8f86d37f0a01ca953c5312d71dbf8de2",
         arm64_linux:  "555f706fc13135dc1c2e8def31dd0fce0e0aec71e275d024c53c0ea00f4e534d",
         x86_64_linux: "2114deb584f435318da59043b3e21df87c5c694a170bad43fb0a3f5371bf3a56"

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
