cask "dcp-o-matic-player" do
  version "2.18.41"
  sha256 "bdda5eca68eb4b9d78427bdfda34cb7e679ee15317719f1fa814e806a9996b4f"

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
