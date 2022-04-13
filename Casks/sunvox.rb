cask "sunvox" do
  version "2.0e"
  sha256 "bf87509d1afba6eb0e0075fccad0c284a8b16311088e0df4bce4c3eae03f4b4a"

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
