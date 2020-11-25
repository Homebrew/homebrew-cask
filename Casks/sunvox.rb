cask "sunvox" do
  version "1.9.6b"
  sha256 "a61a58f6bd093212028afa9df50fb9fb73414b475e4369f98d2407ceb9eada83"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  appcast "https://www.warmplace.ru/soft/sunvox/changelog.txt"
  name "SunVox"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  app "sunvox/sunvox/macos/SunVox.app"
end
