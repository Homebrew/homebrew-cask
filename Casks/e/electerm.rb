cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "5.1.20"
  sha256 arm:   "7d87f4677e905d449569b773c981717f33ce990e532ef06d8327150dea83d9ae",
         intel: "6ca36d8f6da7ebaf893c4060f5b112c6aa31e1485d6dd2dea13626d35dd4b872"

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
