cask "sensiblesidebuttons" do
  version "1.0.7"
  sha256 "fb823f17eeedf367c7af5f969d9a569a6e432440baacdc2de23d26577459e27d"

  url "https://github.com/archagon/sensible-side-buttons/releases/download/#{version}/SensibleSideButtons-#{version}.dmg"
  name "Sensible Side Buttons"
  desc "Utilise mouse side navigation buttons"
  homepage "https://sensible-side-buttons.archagon.net/"

  depends_on :macos

  app "SensibleSideButtons.app"

  zap trash: "~/Library/Preferences/net.archagon.sensible-side-buttons.plist"
end
