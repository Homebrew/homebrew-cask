cask "dcp-o-matic-encode-server" do
  version "2.14.37"
  sha256 "a70c8609e491de5398a4e29b2c257210d7b9bf65c1ea3eefa9f3684d78fd6b9c"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
