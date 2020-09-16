cask "seafile-client" do
  version "7.0.9"
  sha256 "b00e859fc55d05fe0af1dfaddab64d166875e90b5969289fd35b4811aaeea71c"

  # seadrive.org/ was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seafile-client-#{version}.dmg"
  appcast "https://www.seafile.com/en/download/"
  name "Seafile Client"
  homepage "https://www.seafile.com/"

  app "Seafile Client.app"
end
