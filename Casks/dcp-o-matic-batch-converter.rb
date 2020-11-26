cask "dcp-o-matic-batch-converter" do
  version "2.14.45"
  sha256 "8dc1d5e224344b3534de877492018dbeda7292f5e85f9f65d728d094fb92447a"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
