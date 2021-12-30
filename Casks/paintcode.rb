cask "paintcode" do
  version "3.4.8,34800"
  sha256 "07f10e3f7680ab58ade062e338a8ffe71d6a1e7bc950ba1df3bebcdbb23335dc"

  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode_#{version.before_comma}.zip",
      verified: "pixelcut.com/"
  name "PaintCode"
  homepage "https://www.paintcodeapp.com/"

  livecheck do
    url "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
    strategy :sparkle
  end

  app "PaintCode.app"
end
