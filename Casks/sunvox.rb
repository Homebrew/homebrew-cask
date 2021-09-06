cask "sunvox" do
  version "1.9.6c"
  sha256 "69c1df158f81a1d69f1f6bfde49a9e65431d1912c5c4d3b5c21af0fc425d9882"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name "SunVox"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  livecheck do
    url "https://www.warmplace.ru/soft/sunvox/changelog.txt"
    strategy :page_match
    regex(/^v(\d+(?:\.\d+)*[a-z]?)\s*\(\d+/i)
  end

  app "sunvox/sunvox/macos/SunVox.app"
end
