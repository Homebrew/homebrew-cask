cask "dcp-o-matic-encode-server" do
  version "2.16.58"
  sha256 "7c868f11b93a45e3ce0fbdeaa0c464dc7b3737e99d065e12b36a1989418d7e3c"

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
