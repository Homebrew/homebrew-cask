cask "logicalshift-zoom" do
  version "1.1.5"
  sha256 "ab9584758d922f3fa2c607ae6bf58841969fdd5740ff17af76f41ecfd7c6ae11"

  url "https://www.logicalshift.co.uk/mac/Zoom-#{version}.dmg"
  name "Zoom"
  desc "Player for Z-Code, TADS, and HUGO stories or games"
  homepage "https://www.logicalshift.co.uk/unix/zoom/"

  disable! date: "2024-07-14", because: "is 32-bit only"

  app "Zoom.app"
end
