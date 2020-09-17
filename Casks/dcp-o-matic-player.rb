cask "dcp-o-matic-player" do
  version "2.14.37"
  sha256 "fc0d5a8d536611fc144afc134fb18596ecda61baa6283eabe28a6e865385b842"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Player"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Player.app"
end
