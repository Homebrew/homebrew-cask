cask "mate-translate" do
  version "7.1.0"
  sha256 "506009f3fc50d3f264fdc0bd19af7228e8e9385df65aa57d2fe555cef71b4d01"

  # gikken.co/mate/ was verified as official when first introduced to the cask
  url "https://gikken.co/mate/MateTranslate.zip"
  appcast "https://gikken.co/mate/appcast.xml"
  name "Mate Translate"
  desc "Select text in any app and translate it"
  homepage "https://twopeoplesoftware.com/mate"

  depends_on macos: ">= :mojave"

  app "Mate Translate.app"
end
