cask "dcp-o-matic-batch-converter" do
  version "2.14.47"
  sha256 "a7ff1fe7a27584c31a67439b16d0f119786357c26873bf52adfdc528075cc58f"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
