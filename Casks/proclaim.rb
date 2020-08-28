cask "proclaim" do
  version "3.0.0.0028"
  sha256 "cff6718c3bc5f7481eaae78c4c6a8b5abcb3874eb5cf4a81f0d426283d5560cc"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
