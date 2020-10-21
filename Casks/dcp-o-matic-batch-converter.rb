cask "dcp-o-matic-batch-converter" do
  version "2.14.40"
  sha256 "7af50bd32f994d1143325168fd226927aaec3ccd2a8a33d08442e2422a40ecac"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
