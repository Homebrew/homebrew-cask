cask "dcp-o-matic-player" do
  version "2.16.65"
  sha256 "94ca6fb79e1b0ffb86d453147ab58c2fc4dcc74ec574335e64857c6000d2e351"

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
