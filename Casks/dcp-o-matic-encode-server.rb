cask "dcp-o-matic-encode-server" do
  version "2.16.42"
  sha256 "ecad3c20d979c08c7391e49c28db05ebf6ea905588fdb3db5670f773fc481ca9"

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
