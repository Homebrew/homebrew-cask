cask "dcp-o-matic-batch-converter" do
  version "2.14.36"
  sha256 "d2d7e473e93389253aedfe3d6b2d33e41f19b60f73efa7ec50c5274f51f8f97b"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
