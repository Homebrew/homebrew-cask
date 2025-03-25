cask "dcp-o-matic-encode-server" do
  version "2.18.15"
  sha256 "62d9f287e0e25dfacdae62924c5bb535e789699653a997e28c2d122a7b6517c9"

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
