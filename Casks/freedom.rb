cask "freedom" do
  version "2.12.2,2058.1"
  sha256 "be10d2071ba82b0c650f652e6989c32211092acfd7cfb98225eb15bbc4da2f2d"

  url "https://cdn.freedom.to/installers/updates/mac/#{version.csv.first}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Freedom.app"
end
