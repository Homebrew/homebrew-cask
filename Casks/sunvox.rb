cask "sunvox" do
  version "1.9.5d"
  sha256 "15cd23bd7aed218636b91dc2b345f5eb0cc7ac06978b76b84d806d0aaabec711"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  appcast "https://www.warmplace.ru/soft/sunvox/changelog.txt"
  name "SunVox"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  app "sunvox/sunvox/macos/SunVox.app"
end
