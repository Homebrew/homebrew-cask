cask "burn" do
  version "3.1.7"
  sha256 "e4b7f02a57664c87757966f17ecf9c62b2a12f6090da6a2cc8eca0db02d428a9"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"

  zap trash: "~/Library/Preferences/com.kiwifruitware.Burn.plist"
end
