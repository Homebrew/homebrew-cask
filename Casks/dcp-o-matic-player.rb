cask "dcp-o-matic-player" do
  version "2.14.57"
  sha256 "a8c9dc2f1ee081d34da0045ccd4fe49ffec21ba9ff81de52a7c0c1aee36e9ab8"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Player.app"
end
