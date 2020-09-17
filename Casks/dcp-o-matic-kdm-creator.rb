cask "dcp-o-matic-kdm-creator" do
  version "2.14.37"
  sha256 "31c466b892e23ad7ad559c379b3b972212f1cc2849573c2a98935ca4b1e77f8c"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
