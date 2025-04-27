cask "dcp-o-matic-player" do
  version "2.18.18"
  sha256 "534c90491b9a22bbf1044375a69374ccdd5c765eea2892ff618d9f0fff7af253"

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
