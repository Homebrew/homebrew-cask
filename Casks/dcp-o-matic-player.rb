cask "dcp-o-matic-player" do
  version "2.14.36"
  sha256 "6a1b5b4fba17293c94d0e32174a371c0cef59af142bbe802a94aec788f78a42b"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Player"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Player.app"
end
