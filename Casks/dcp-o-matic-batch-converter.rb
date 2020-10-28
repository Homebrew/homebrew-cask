cask "dcp-o-matic-batch-converter" do
  version "2.14.41"
  sha256 "bce506ad265d77583cf8a6e2d3ca2c7136d45b110ee9bbeb3a40d7b78b4f95cb"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
