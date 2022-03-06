cask "paintcode" do
  version "3.5.3,35014"
  sha256 "543e9249228a0040d1d4eeef30c2ed66342b828c0aac511c186764fc9b13547b"

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
