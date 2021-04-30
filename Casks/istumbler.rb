cask "istumbler" do
  version "103.43"
  sha256 "35796f9a119814527f98b85a0b8fbe0352895c3d8f21e9fd5af2cceb6d0277cb"

  url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  name "iStumbler"
  desc "Wireless discovery tool"
  homepage "https://istumbler.net/"

  livecheck do
    url "https://istumbler.net/feeds/appcast.rss"
    strategy :sparkle
  end

  auto_updates true

  app "iStumbler.app"
end
