cask "dcp-o-matic-encode-server" do
  version "2.18.43"
  sha256 "71074ae3b71d0d64cd900b620048702c83df4a25c634d8bb7fdd90bffb672d4f"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-server&version=#{version}"
  name "DCP-o-matic Encode Server"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Encode Server.app"

  # No zap stanza required
end
