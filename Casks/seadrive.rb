cask "seadrive" do
  version "2.0.6"
  sha256 "f9c591660c0336596bf6d558e06e8e0bfe685483231dd8589c99fc9a399cebbe"

  # download.seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast "https://www.seafile.com/en/download/"
  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  app "Seadrive.app"
end
