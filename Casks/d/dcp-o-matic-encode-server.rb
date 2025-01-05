cask "dcp-o-matic-encode-server" do
  version "2.18.2"
  sha256 "1ae7c28b89ee86d357cd24e227e9a4ce249f56b474fe71b5ae36465a1a4ec09c"

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
