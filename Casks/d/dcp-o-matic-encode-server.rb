cask "dcp-o-matic-encode-server" do
  version "2.16.65"
  sha256 "0b2e9e18d5a049eaf034955c32f28eef095314ec55a6faa81d5aca748ec3ecf7"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
