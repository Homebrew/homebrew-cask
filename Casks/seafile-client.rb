cask "seafile-client" do
  version "7.0.10"
  sha256 "f56c3f9d9aa3295e74ee9c08fe852f489188b14065af43f8d1f35aa9f0f53d36"

  # seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast "https://www.seafile.com/en/download/"
  name "Seafile Client"
  homepage "https://www.seafile.com/"

  app "Seafile Client.app"
end
