cask "nextdns-app" do
  version "2.1.5"
  sha256 "1f34a63da08bd17695533a5fd55ca007c2d60a24edebec8c6ebeb01824111e4a"

  url "https://storage.googleapis.com/nextdns_macos/NextDNS-#{version}.dmg"
  name "NextDNS"
  desc "Encrypted DNS client with ad and tracker blocking"
  homepage "https://nextdns.io/"

  livecheck do
    url "https://storage.googleapis.com/nextdns_macos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "NextDNS.app"

  zap trash: [
    "~/Library/Application Scripts/io.nextdns.NextDNSMac",
    "~/Library/Containers/io.nextdns.NextDNSMac",
    "~/Library/Preferences/io.nextdns.NextDNSMac.plist",
  ]
end
