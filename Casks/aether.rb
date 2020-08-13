cask "aether" do
  version "2.0.0-dev.14,1912161354.a1a015e"
  sha256 "cd3a722137891601cd2f2103f2ea57f76b88bd1b930f28ba5877b26372abde06"

  url "https://static.getaether.net/Releases/Aether-#{version.before_comma}/#{version.after_comma}/mac/Aether-#{version.before_comma}%2B#{version.after_comma}.dmg"
  appcast "https://static.getaether.net/WebsiteReleaseLinks/Latest/LatestReleaseLinks.json"
  name "Aether"
  homepage "https://getaether.net/"

  app "Aether.app"
end
