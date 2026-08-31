cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "5.3.15"
  sha256 arm:   "dd9bddadcc1270af6a84c4e83ebc90c9bcbaf0deb0c5ceb42ed6f84145d0c148",
         intel: "4d5392de13202407a1e6d37f1613888e95674eaa1c7bbebd10cc2605337cd08a"

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
