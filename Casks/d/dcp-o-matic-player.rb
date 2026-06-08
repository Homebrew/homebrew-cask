cask "dcp-o-matic-player" do
  version "2.18.43"
  sha256 "b621d8ee497eb6770e9bc5f0084fdfa9f3504765ed7b02db499e6ff1d9fa4bab"

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
