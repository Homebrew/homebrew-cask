cask "dcp-o-matic-encode-server" do
  version "2.14.41"
  sha256 "80f6f69e05ba055df9a81dee615d07c4b3db0d9bda09567e400859b524463aeb"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
