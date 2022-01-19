cask "dcp-o-matic-encode-server" do
  version "2.14.57"
  sha256 "5a52cfa03a64b3c0e124f01a4d858480cbbb3a0d660b511f62b2403f8c870ba4"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"
end
