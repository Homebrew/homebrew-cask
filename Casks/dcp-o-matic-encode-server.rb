cask "dcp-o-matic-encode-server" do
  version "2.16.5"
  sha256 "70acd5eb2b2a09d82bf0d615bae0754ba6750da734c4575f4918efdf4d3c1417"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"
end
