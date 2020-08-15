cask "dcp-o-matic-encode-server" do
  version "2.14.36"
  sha256 "65b35adb57b1a340dcb2751ccf0811af08a06ba45f73f2164d4bcf19d3bd938c"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic Encode Server"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} Encode Server.app"
end
