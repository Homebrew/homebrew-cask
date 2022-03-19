cask "burn" do
  version "3.1.5"
  sha256 "8c48ffcb49ab2f5bde11d5f5776dfbc7c676174d56eb59360d2ff45c972c6adc"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"

  zap trash: "~/Library/Preferences/com.kiwifruitware.Burn.plist"
end
