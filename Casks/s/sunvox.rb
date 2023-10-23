cask "sunvox" do
  version "2.1.1"
  sha256 "df860b23d0f9b1a22591c3550eb8bc9696d30fceb2230f921135897b48ac2bef"

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
