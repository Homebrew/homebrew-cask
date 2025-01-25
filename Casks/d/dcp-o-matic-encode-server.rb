cask "dcp-o-matic-encode-server" do
  version "2.18.8"
  sha256 "e2ac2afb11e68617c77c14afc7ba7f31e8e7ad602fbcab6589df1b237989a7c2"

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
