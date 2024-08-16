cask "dcp-o-matic-encode-server" do
  version "2.16.91"
  sha256 "c0896bcf084a6c5ae70fe75caf9433fd106b533a051cbc2e6b88a1a2485b673c"

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
