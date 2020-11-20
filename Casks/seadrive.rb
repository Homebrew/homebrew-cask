cask "seadrive" do
  version "2.0.9"
  sha256 "8c0de67f4244e8a2da0159606e9d347bf2932d42e23b5be24f1a3cd9106a071a"

  # download.seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast "https://www.seafile.com/en/download/"
  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  app "Seadrive.app"
end
