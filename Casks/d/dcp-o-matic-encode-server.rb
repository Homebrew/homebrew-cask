cask "dcp-o-matic-encode-server" do
  version "2.16.81"
  sha256 "e39b553b1d8d26647b48bd230376ec25bad78dd1b7f847fdbed2ba2c721d33e2"

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
