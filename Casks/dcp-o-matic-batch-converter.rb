cask "dcp-o-matic-batch-converter" do
  version "2.14.37"
  sha256 "6e09428da2c3356054d015d2179030542fb4685d083ed4f988b4db71685e9cbc"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
