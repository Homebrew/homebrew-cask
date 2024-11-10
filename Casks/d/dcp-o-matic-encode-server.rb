cask "dcp-o-matic-encode-server" do
  version "2.16.97"
  sha256 "cd5be7cffc2e477365a4b2b692e7202127a94fa486254507bbe978f4f90a8fb3"

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
