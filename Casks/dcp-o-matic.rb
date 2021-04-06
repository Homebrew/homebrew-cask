cask "dcp-o-matic" do
  version "2.14.47"
  sha256 "774243e24527bd7bde151dc8d50d438f13659f30813e7b0a15a68c84d5e30a05"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major}.app"
end
