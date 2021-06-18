cask "camerabag-photo" do
  version "3.1.0"
  sha256 "017ee2d95497ad7eb5725eda1ef47e3d01b132a1d756f6089c650949fc4a5b1f"

  url "https://nevercenter.com/camerabag/photo/download/filearchive/CameraBag_Photo_Mac_#{version.dots_to_underscores}.dmg"
  name "CameraBag"
  homepage "https://nevercenter.com/camerabag/photo/"

  app "CameraBag Photo.app"
end
