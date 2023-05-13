cask "dcp-o-matic" do
  version "2.16.55"
  sha256 "1a628b7c50c8df6362ee4113c3fc27790db9e4e2bc6def1bb60a7d28401964da"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major}.app"

  # No zap stanza required
end
