cask "encryptme" do
  version "4.4.0"
  sha256 "3dda64ebde80fea167184e18647b0a42ff8d190c6119197e58e3883245ebf477"

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  name "EncryptMe"
  name "Cloak"
  desc "VPN and encryption software"
  homepage "https://encrypt.me/"

  livecheck do
    url "https://www.getcloak.com/updates/osx/public/"
    strategy :sparkle, &:short_version
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :monterey"

  app "EncryptMe.app"

  zap trash: [
    "~/Library/Application Support/com.bourgeoisbits.cloak.agent",
    "~/Library/Caches/com.bourgeoisbits.cloak.agent",
    "~/Library/HTTPStorages/com.bourgeoisbits.cloak.agent",
    "~/Library/HTTPStorages/com.bourgeoisbits.cloak.agent.binarycookies",
    "~/Library/Preferences/com.bourgeoisbits.cloak.agent.plist",
    "~/Library/WebKit/com.bourgeoisbits.cloak.agent",
  ]
end
