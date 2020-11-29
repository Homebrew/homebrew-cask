cask "dcp-o-matic-batch-converter" do
  version "2.14.46"
  sha256 "a5fe25e85f76e82bdf158eedbfef3c97c5e5be06cb7bbfb1c6dad67dad9be3a8"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
