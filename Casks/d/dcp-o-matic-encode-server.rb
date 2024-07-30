cask "dcp-o-matic-encode-server" do
  version "2.16.90"
  sha256 "81b0c0dde65ca1aaa569471b748a5d681b1ffa608a5bb7a469ea5ab21ba60b74"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
