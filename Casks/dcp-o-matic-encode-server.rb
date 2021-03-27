cask "dcp-o-matic-encode-server" do
  version "2.14.47"
  sha256 "7c6b37a0c327d8b81e43c9ba36f81987e22c34d9e6f912af0ad1a04bcf026227"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
