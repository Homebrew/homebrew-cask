cask "proclaim" do
  version "3.0.0.0040"
  sha256 "11bdfdbdc5eb6093b75d7d5158d26af6c7d88f9cb3965ff74a45842201f029ac"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
