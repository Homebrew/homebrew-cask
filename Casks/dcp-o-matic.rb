cask "dcp-o-matic" do
  version "2.14.40"
  sha256 "ef2e642bba37ddcc1b6e72850b7b8180d6fb27599b636c35573cd1f4545a6770"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major}.app"
end
