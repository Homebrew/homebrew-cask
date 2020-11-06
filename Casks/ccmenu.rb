cask "ccmenu" do
  version "14.0"
  sha256 "6e8c88c0de1db8206274109011db37b7ce53d63fdbed11de0057f967d7959976"

  # github.com/erikdoe/ccmenu/ was verified as official when first introduced to the cask
  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast "https://github.com/erikdoe/ccmenu/releases.atom"
  name "CCMenu"
  desc "Application to monitor continuous integration servers"
  homepage "http://ccmenu.org/"

  app "CCMenu.app"
end
