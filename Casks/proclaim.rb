cask "proclaim" do
  version "3.0.0.0041"
  sha256 "03b6285429f7d54a1cb17919d133b23c57a522119cef76e8da9cffbbcb7c2bf4"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
