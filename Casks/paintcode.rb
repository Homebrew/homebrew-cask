cask "paintcode" do
  version "3.5.2,35013"
  sha256 "42fe5c12ea2e7c43a912562d63d282ee81bfeacaa7df404d2ccb9982ec9adc5e"

  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode_#{version.csv.first}.zip",
      verified: "pixelcut.com/"
  name "PaintCode"
  desc "Turn vector drawings into program code"
  homepage "https://www.paintcodeapp.com/"

  livecheck do
    url "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml"
    strategy :sparkle
  end

  app "PaintCode.app"
end
