cask "dcp-o-matic" do
  version "2.14.37"
  sha256 "568059badb9e0e4873d37c38e662eb00ad04cbfd384fe1257e9339af223b1718"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major}.app"
end
