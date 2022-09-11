cask "dcp-o-matic-encode-server" do
  version "2.16.24"
  sha256 "3c383abf006b059094a28b557e023cc67cfba3d1e2a76dd5703aef5962d16ab3"

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
