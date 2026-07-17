cask "dcp-o-matic-player" do
  version "2.18.44"
  sha256 "9c7ea69f820a19a13d9dee81949a7a49ca0afb146aa46f09f867acfa8a93e448"

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
