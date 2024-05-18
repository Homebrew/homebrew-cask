cask "dcp-o-matic-encode-server" do
  version "2.16.85"
  sha256 "229cf6e74bf075575b12bf5c68f9e0c302036260f1bcb7a8a50973f380806fdd"

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
