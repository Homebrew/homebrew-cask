cask "dcp-o-matic-encode-server" do
  version "2.16.63"
  sha256 "c93f939b5cebd86919e9b435f1a8f700a7e9b7338c0222b5d4565ee20ee1a0d6"

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
