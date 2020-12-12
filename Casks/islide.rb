cask "islide" do
  version "1.2.0"
  sha256 "c91552583cb784c1a0e7d6e2db132c54e0b7065be54a93aad828470844c99e19"

  url "https://static.islide.cc/site/product/package/dmg/iSlide-#{version}.dmg"
  appcast "https://static.islide.cc/site/product/package/dmg/latest-mac.yml"
  name "iSlide"
  homepage "https://www.islide.cc/"

  auto_updates true

  app "iSlide.app"
end
