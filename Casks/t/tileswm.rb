cask "tileswm" do
  version :latest
  sha256 :no_check

  url "https://github.com/denissteinhorst/tileswm-app-release/releases/download/latest/TilesWM.app.zip",
      verified: "github.com/denissteinhorst/tileswm-app-release/"
  name "TilesWM"
  desc "FancyZones-inspired window manager with profile-based tiling"
  homepage "https://www.tileswm.app/"

  depends_on macos: ">= :sequoia"

  app "TilesWM.app"

  zap trash: "~/Library/Application Support/dev.steinhorst.tileswm"
end
