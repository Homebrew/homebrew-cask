cask "mate-translate" do
  version "7.1.0"
  sha256 "4751f8e8389776ae324f553fcf1222c76023dda5bcd888ecf042d5e2d49b3be6"

  # gikken.co/mate/ was verified as official when first introduced to the cask
  url "https://gikken.co/mate/MateTranslate.zip"
  appcast "https://gikken.co/mate/appcast.xml"
  name "Mate Translate"
  desc "Select text in any app and translate it"
  homepage "https://twopeoplesoftware.com/mate"

  depends_on macos: ">= :mojave"

  app "Mate Translate.app"
end
