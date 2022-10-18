cask "freedom" do
  version "2.12.1,2055.1"
  sha256 "0f502490c6f050bf9946f732dc3814fdb2a1bb818e65df82fbb62eb6c95c28f9"

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
