cask "dcp-o-matic-player" do
  version "2.16.48"
  sha256 "fa087d428b21ca74b2cfd17929b03b9edf57e1490b8dd1cf3367cfb23aa77a8c"

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
