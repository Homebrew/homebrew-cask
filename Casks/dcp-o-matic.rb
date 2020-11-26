cask "dcp-o-matic" do
  version "2.14.45"
  sha256 "14a98fc1848eb66bfe3d36a2c7a8e7f46a00ddf403fbad9a51b6403f4262e68a"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major}.app"
end
