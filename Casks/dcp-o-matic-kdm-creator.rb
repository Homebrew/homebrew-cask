cask "dcp-o-matic-kdm-creator" do
  version "2.14.45"
  sha256 "7ea402b9ef66832223dd16b6175f56d719e8f7f1ef51ea6eaeec19c9e666dcd4"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
