cask "sensiblesidebuttons" do
  version "1.0.6"
  sha256 "1f2b3aefc47ac1ff8ce1e83af3ddab814dd7c6e6b974b73dce3694ec7435881b"

  url "https://github.com/archagon/sensible-side-buttons/releases/download/#{version}/SensibleSideButtons-#{version}.dmg",
      verified: "github.com/archagon/sensible-side-buttons/"
  name "Sensible Side Buttons"
  desc "Utilise mouse side navigation buttons"
  homepage "https://sensible-side-buttons.archagon.net/"

  app "SensibleSideButtons.app"

  zap trash: "~/Library/Preferences/net.archagon.sensible-side-buttons.plist"

  caveats do
    requires_rosetta
  end
end
