cask "burn" do
  version "3.1"
  sha256 "c23941a9699a98c6fe0ad90aa17fcc0408a057e353c2daa2e16417cd6d7c1a47"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  appcast "https://sourceforge.net/projects/burn-osx/rss?path=/Burn"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"
end
