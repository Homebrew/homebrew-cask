cask "dcp-o-matic-encode-server" do
  version "2.14.38"
  sha256 "85e5ee995923cda7790f6c1157487609db2e632e0b6d9a52203e190564b08cac"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
