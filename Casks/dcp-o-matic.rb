cask "dcp-o-matic" do
  version "2.14.41"
  sha256 "9810ad7609c1011a33e4e644d579087afa64b943ff9801767131f35f8c5b9270"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major}.app"
end
