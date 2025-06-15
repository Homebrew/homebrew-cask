cask "dcp-o-matic-player" do
  version "2.18.20"
  sha256 "78123f1a7f4ebef918ebbd84fc2f3a2120fe08574a11dcfa120a1938e6eb3c59"

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
