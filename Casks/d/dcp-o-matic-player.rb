cask "dcp-o-matic-player" do
  version "2.16.84"
  sha256 "cdf51c766da148bcfe58045ef8ef3f95c88b33808f70a4b0882bb166511e9d6a"

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
