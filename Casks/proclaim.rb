cask "proclaim" do
  version "3.0.0.0036"
  sha256 "4e0f3d283cb50a1d0d1e9135a2d55ec3b0972670fffda70e6d2ae8fc73422301"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
