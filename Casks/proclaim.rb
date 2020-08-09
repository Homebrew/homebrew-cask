cask "proclaim" do
  version "3.0.0.0009"
  sha256 "2ca4918b18147b0d8accfa0e4246fdf54216f0bd83380e558d9d7119bafb6574"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
