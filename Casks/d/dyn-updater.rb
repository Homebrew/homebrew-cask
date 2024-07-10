cask "dyn-updater" do
  version "5.5.0"
  sha256 "70cb2600907b05adf5a912baaee7512b6d70331405c551414889a49608a1fab9"

  url "http://cdn.dyn.com/dynupdater/DynUpdater-#{version}.zip"
  name "Dyn Updater"
  homepage "https://dyn.com/updater/"

  livecheck do
    url "http://cdn.dyn.com/dynupdater/appcast.xml"
    strategy :sparkle
  end

  app "Dyn Updater.app"

  caveats do
    requires_rosetta
  end
end
