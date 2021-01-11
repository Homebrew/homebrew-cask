cask "burn" do
  version "3.0.3"
  sha256 "90350b61f769b3022aa649d2a80572bada707cb951fc43d0d499e66cb26e1cc4"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/Burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  appcast "https://sourceforge.net/projects/burn-osx/rss?path=/Burn"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"
end
