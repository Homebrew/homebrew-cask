cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "3.15.186"
  sha256 arm:   "9414b3008b8adc5c1a72916232b5314f20a2b33d8dc93fb0725a558acfce4fce",
         intel: "be8fc5d533b3d0436b34cba18a684b1a8f86d37f0a01ca953c5312d71dbf8de2"

  url "https://mirror.electerm.org/https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
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
