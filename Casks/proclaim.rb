cask "proclaim" do
  version "3.0.0.0025"
  sha256 "902149d833add0c61957e870d726fd8c170c3a5422fed312c44d94fa62abe0ed"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
