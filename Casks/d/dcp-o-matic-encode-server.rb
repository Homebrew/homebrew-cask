cask "dcp-o-matic-encode-server" do
  version "2.18.5"
  sha256 "047e15d81bfb3e362f404c00a54887498149d2fc74f492588a885ac38bf590a0"

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
