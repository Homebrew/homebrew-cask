cask "paintcode" do
  version "3.4.8"
  sha256 "07f10e3f7680ab58ade062e338a8ffe71d6a1e7bc950ba1df3bebcdbb23335dc"

  # pixelcut.com/ was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode_#{version}.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
  name "PaintCode"
  homepage "https://www.paintcodeapp.com/"

  app "PaintCode.app"
end
