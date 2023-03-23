cask "dcp-o-matic-encode-server" do
  version "2.16.48"
  sha256 "bf7366e68a46759b0c9aee6c3f3aab0e1625771e0c6e7689f4349bb760f7be20"

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
