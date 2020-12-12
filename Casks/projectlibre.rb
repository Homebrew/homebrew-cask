cask "projectlibre" do
  version "1.9.2"
  sha256 "2e0f85b6d686eadacfa4d6e70c1ff12940808dc57e7232c78ac22bd1fea84031"

  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version.major_minor}/ProjectLibre-#{version}.dmg",
      verified: "sourceforge.net/projectlibre/"
  appcast "https://sourceforge.net/projects/projectlibre/rss?path=/ProjectLibre"
  name "ProjectLibre"
  homepage "https://www.projectlibre.com/"

  app "ProjectLibre.app"
end
