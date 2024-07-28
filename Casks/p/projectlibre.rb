cask "projectlibre" do
  version "1.9.3"
  sha256 "7dea79e90f3d9172aa9f8feafdb24c96b0e19380db6e530a9b2e1a5c3d99717b"

  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version.major_minor}/projectlibre-#{version}.dmg",
      verified: "sourceforge.net/projectlibre/"
  name "ProjectLibre"
  desc "Microsoft Project in your browser"
  homepage "https://www.projectlibre.com/"

  app "ProjectLibre.app"

  zap trash: "~/Library/Preferences/com.projectlibre#{version.major}.*"

  caveats do
    requires_rosetta
  end
end
