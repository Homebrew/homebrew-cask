cask "sunvox" do
  version "1.9.6c"
  sha256 "300eb555c47293370c99cdf5b45e852c581e92cecaaf2db88bca306191c91f53"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  appcast "https://www.warmplace.ru/soft/sunvox/changelog.txt"
  name "SunVox"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  app "sunvox/sunvox/macos/SunVox.app"
end
