cask "dcp-o-matic-batch-converter" do
  version "2.14.51"
  sha256 "62c4f131986a0be0875b7bdd0bec187b34bd7139e03f44bb634189045d292435"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
