cask "dcp-o-matic-player" do
  version "2.18.42"
  sha256 "a3c0b9dfb2197fd9c6170edb94f115b47e45759bdda9987fdf002f0719297890"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
