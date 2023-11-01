cask "sunvox" do
  version "2.1.1b"
  sha256 "b5647c10dab1abe7359a84bc8a8d5145a3ba63f1895ab94b1105ab5621961bad"

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
