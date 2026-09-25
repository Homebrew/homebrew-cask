cask "serverwatch" do
  version "1.0.2"
  sha256 "76f1f99b3d46b67d45aaf581ee3856ca05418738ce69b2e08a278d16e9ad0e6c"

  url "https://shop.pixagentur.com/serverwatch/download/#{version}"
  name "ServerWatch"
  desc "Monitor Linux servers from the menu bar"
  homepage "https://pixagentur.com/serverwatch/"

  livecheck do
    url "https://shop.pixagentur.com/serverwatch/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma
  container type: :dmg

  app "ServerWatch.app"
end
