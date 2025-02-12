cask "dcp-o-matic-encode-server" do
  version "2.18.11"
  sha256 "a9df6c0b297f5fe43b028294ecd12a93d2563ef16a9b914b66c5f23d2bf4e98a"

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
