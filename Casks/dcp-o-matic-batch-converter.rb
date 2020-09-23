cask "dcp-o-matic-batch-converter" do
  version "2.14.38"
  sha256 "1796eb4aea6d41e4a3d395df18a64ae2735d45033da12e94fa644119bf15492c"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Batch converter"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Batch converter.app"
end
