cask "appgrid" do
  version "1.0.4"
  sha256 "e89280465b4a3dc580b026f25f2ade04ab1cd9b15a476e327110a1d91bd7da77"

  url "https://github.com/mjolnirapp/AppGrid/releases/download/#{version}/AppGrid-#{version}.zip"
  name "AppGrid"
  desc "Window manager with Vim–like hotkeys"
  homepage "https://github.com/mjolnirapp/AppGrid/"

  livecheck do
    url :homepage
    regex(/href=.*?AppGrid[._-]v?(\d+(?:\.\d+)+)\.zip/i)
    strategy :page_match
  end

  app "AppGrid.app"

  uninstall quit: "com.sdegutis.AppGrid"

  zap trash: "~/Library/Preferences/com.sdegutis.AppGrid.plist"

  caveats do
    requires_rosetta
  end
end
