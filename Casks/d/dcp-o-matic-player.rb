cask "dcp-o-matic-player" do
  version "2.16.88"
  sha256 "2ad1f3be46189e382755db2d751c73e8e7e6401664fe51e42e76dfe0a90cea33"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
