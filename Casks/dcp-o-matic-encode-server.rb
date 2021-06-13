cask "dcp-o-matic-encode-server" do
  version "2.14.51"
  sha256 "7b763121164bf89a15083b197cfdff7e0b86202fa8db6962cf5c7059c4943967"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
