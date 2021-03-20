cask "burn" do
  version "3.1.1"
  sha256 "6579c33e365c1d6ba75629524bee2ea1e1bdaf5f459e421feeedb5668c4b03e1"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  appcast "https://sourceforge.net/projects/burn-osx/rss?path=/Burn"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"
end
