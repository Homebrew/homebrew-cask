cask "dcp-o-matic-player" do
  version "2.18.7"
  sha256 "5825cfa1e922e2cf431cc6a7350954915f9f8257b4cc94eac6270d3b9d078355"

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
