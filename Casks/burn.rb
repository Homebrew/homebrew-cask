cask "burn" do
  version "3.1.3"
  sha256 "414140ab2920137eed3a77a6d507e432e25562598ac515a82bc54df529a0ba32"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"
end
