cask "sunvox" do
  version "2.1c"
  sha256 "c8f55c6ed94055b3bdb8cb0595f679d53e34f2103554f24023e47e25d8dcca3c"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name "SunVox"
  desc "Modular synthesizer"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  livecheck do
    url "https://www.warmplace.ru/soft/sunvox/changelog.txt"
    regex(/^v(\d+(?:\.\d+)*[a-z]?)\s*\(\d+/i)
  end

  app "sunvox/sunvox/macos/SunVox.app"
end
