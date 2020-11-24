cask "sunvox" do
  version "1.9.6"
  sha256 "9983bc45aaecf0107c6b149ba4de87bb3ba87aff8492723ba8203b54cd06c8b2"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  appcast "https://www.warmplace.ru/soft/sunvox/changelog.txt"
  name "SunVox"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  app "sunvox/sunvox/macos/SunVox.app"
end
