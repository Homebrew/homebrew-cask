cask "dcp-o-matic-encode-server" do
  version "2.18.3"
  sha256 "7a2bac92a95cedcc96b0ab8b837b41aa5d3dded2abcc7aaf95b4763eb0af2331"

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
