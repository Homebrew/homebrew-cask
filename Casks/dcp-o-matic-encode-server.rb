cask "dcp-o-matic-encode-server" do
  version "2.14.40"
  sha256 "2bc7778d0862f8b84017a61c7eca389019e2aa9b77fd0a2a84d947d25dac9f0c"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
