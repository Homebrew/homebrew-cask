cask "dcp-o-matic-encode-server" do
  version "2.16.30"
  sha256 "aa2fb4d8768ed78822f465392329d61c5836b50520d4462aa1f38e3af8c5a4cd"

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
