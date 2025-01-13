cask "dcp-o-matic-encode-server" do
  version "2.18.4"
  sha256 "27de2ae4fc112e708673a63cc536ae259573568f79d5e6cc26dddfaa654ad5c5"

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
