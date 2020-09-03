cask "proclaim" do
  version "3.0.0.0032"
  sha256 "f3266b643bde32c9ad0f535b93ab64ff57f18782e03c6539b1e8b0cf883a6be5"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
