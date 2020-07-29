cask "proclaim" do
  version "2.12.0.0085"
  sha256 "f320a74716292f6e6b4e54fac70cc3bbe468eb9db4c861c19c51aa9e00754090"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  app "Proclaim.app"
end
