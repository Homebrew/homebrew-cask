cask "dcp-o-matic-player" do
  version "2.16.22"
  sha256 "0190a7fa79cce09446af865f312dbad6468496ccc8df4b4d84fd0924aff19cac"

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
