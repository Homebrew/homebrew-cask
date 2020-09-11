cask "seadrive" do
  version "2.0.5"
  sha256 "71cb10d98b9f2bb9680d641b68ccf73f7972d3276b6f42df299cc040230d7ba1"

  # download.seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast "https://www.seafile.com/en/download/"
  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  app "Seadrive.app"
end
