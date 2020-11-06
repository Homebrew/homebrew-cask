cask "mate-translate" do
  version "7.0.1"
  sha256 "f865966ff61a124414c6622f30dff0e6ffd7556a8145836cca3735e2325b86d8"

  # gikken.co/mate/ was verified as official when first introduced to the cask
  url "https://gikken.co/mate/MateTranslate.zip"
  appcast "https://gikken.co/mate/appcast.xml"
  name "Mate Translate"
  desc "Select text in any app and translate it"
  homepage "https://twopeoplesoftware.com/mate"

  depends_on macos: ">= :mojave"

  app "Mate Translate.app"
end
