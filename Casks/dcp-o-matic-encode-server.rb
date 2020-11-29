cask "dcp-o-matic-encode-server" do
  version "2.14.46"
  sha256 "47aa757e11d0349b904bb737dace92c845a176a1091bfc34244c8316f8af35f9"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
