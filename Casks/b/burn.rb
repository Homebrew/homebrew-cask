cask "burn" do
  version "3.1.8"
  sha256 "feb5bf3f25838b30a37df892d2947765c15adbf3b2b15c6f120b48106123b9cf"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"

  zap trash: "~/Library/Preferences/com.kiwifruitware.Burn.plist"
end
