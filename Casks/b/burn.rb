cask "burn" do
  version "3.1.9"
  sha256 "baa79cebc3f30224087a5f1a11b1fec4b9e749c5eb19a675d9c8bc7c1cf7dbcc"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"

  zap trash: "~/Library/Preferences/com.kiwifruitware.Burn.plist"
end
