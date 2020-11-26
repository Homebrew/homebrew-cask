cask "dcp-o-matic-encode-server" do
  version "2.14.45"
  sha256 "c041bc80beb39336ba3e2a73e2ce75e91f9106e2d6009cffba8bab27836f8d5a"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
