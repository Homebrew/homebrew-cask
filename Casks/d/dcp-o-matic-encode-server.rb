cask "dcp-o-matic-encode-server" do
  version "2.16.88"
  sha256 "6d2a4a53b4540b0d2b98e4b7d62b711e334cf210ac9a66da8a78c8a432990355"

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
