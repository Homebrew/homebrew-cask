cask "paintcode" do
  version "3.4.5"
  sha256 "fa9ffde38cb9201dac6cf596c013918e6839ff3be0d2f5919f970b8d98102979"

  # pixelcut.com/ was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
  name "PaintCode"
  homepage "https://www.paintcodeapp.com/"

  app "PaintCode.app"
end
