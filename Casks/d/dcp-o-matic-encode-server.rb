cask "dcp-o-matic-encode-server" do
  version "2.16.66"
  sha256 "49a63ae15ac1efae86df28f768ac85bb86fa57821f724530598b245564dc9fb7"

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
