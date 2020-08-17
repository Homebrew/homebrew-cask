cask "dcp-o-matic" do
  version "2.14.36"
  sha256 "437745331347573f2bab895437ac77aa54b477df22023aa0ec34b0706b635780"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major}.app"
end
