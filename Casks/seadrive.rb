cask "seadrive" do
  version "2.0.7"
  sha256 "79982a8c82244f231d2f030cf5acba35bb2a81044190d09beadc446e95f7ffc9"

  # download.seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast "https://www.seafile.com/en/download/"
  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  app "Seadrive.app"
end
