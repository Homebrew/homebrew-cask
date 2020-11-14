cask "seadrive" do
  version "2.0.8"
  sha256 "b11c41a5e12c68061a4b9012d59316a41207f21147d7fb770fd4dc94f9337bb1"

  # download.seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast "https://www.seafile.com/en/download/"
  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  app "Seadrive.app"
end
