cask "dcp-o-matic-player" do
  version "2.16.14"
  sha256 "9c2987d98bd9d59a99825dfaf3562fab67f21071ea0b349a811be9c2d4e88ed5"

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
