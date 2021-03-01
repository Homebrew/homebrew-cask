cask "dcp-o-matic-player" do
  version "2.14.47"
  sha256 "41f67135e04e48d9a530093bcec274410d02e27f1b7ce86b0ea8b289b8ac214f"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Player"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Player.app"
end
