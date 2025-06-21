cask "dcp-o-matic-encode-server" do
  version "2.18.20"
  sha256 "9a747a88c4659ddbbbd25f90ee708049790309b8d520484b2f7b327a416564bd"

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
