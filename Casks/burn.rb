cask "burn" do
  version "3.1.6"
  sha256 "a943a9a66a664375cf92cfe4f04e23d1203b5e88013a06eff8adc858ab2e4fee"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"

  zap trash: "~/Library/Preferences/com.kiwifruitware.Burn.plist"
end
