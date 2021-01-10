cask "projectlibre" do
  version "1.9.3"
  sha256 "7dea79e90f3d9172aa9f8feafdb24c96b0e19380db6e530a9b2e1a5c3d99717b"

  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version.major_minor}/projectlibre-#{version}.dmg",
      verified: "sourceforge.net/projectlibre/"
  appcast "https://sourceforge.net/projects/projectlibre/rss?path=/ProjectLibre"
  name "ProjectLibre"
  homepage "https://www.projectlibre.com/"

  app "ProjectLibre.app"
end
