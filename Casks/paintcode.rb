cask "paintcode" do
  version "3.5.4,35015"
  sha256 "7e8598e9d0f4c8d84207a02a9deecf126c116e0ab158c35a54b9bb1f17da46fc"

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
