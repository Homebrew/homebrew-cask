cask "burn" do
  version "3.1.4"
  sha256 "e672869be18a0d1429bc866975b15f131ce3bbd22f4c8e2dd58fb030f66d0d54"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"
end
