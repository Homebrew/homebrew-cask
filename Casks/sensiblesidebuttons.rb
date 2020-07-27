cask "sensiblesidebuttons" do
  version "1.0.6"
  sha256 "1f2b3aefc47ac1ff8ce1e83af3ddab814dd7c6e6b974b73dce3694ec7435881b"

  # github.com/archagon/sensible-side-buttons/ was verified as official when first introduced to the cask
  url "https://github.com/archagon/sensible-side-buttons/releases/download/#{version}/SensibleSideButtons-#{version}.dmg"
  appcast "https://github.com/archagon/sensible-side-buttons/releases.atom"
  name "Sensible Side Buttons"
  homepage "https://sensible-side-buttons.archagon.net/"

  app "SensibleSideButtons.app"
end
