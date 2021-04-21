cask "burn" do
  version "3.1.2"
  sha256 "8fa6ed2255b48953254dfe027f30ec9d4ec03d5a378d1da514243befec76c041"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"
end
