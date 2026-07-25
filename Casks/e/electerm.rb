cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "3.15.159"
  sha256 arm:   "d9c5fac3f4d5899330d74fd7f12f53e0bf5924f0d73c8336d3d4cfb9b7d0d597",
         intel: "42eaff03a9934765c1177161f4b157e7c4c97838db5cbdff8464dbe38723d342"

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
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
