cask "dcp-o-matic-encode-server" do
  version "2.16.15"
  sha256 "27a83374cab3c3089fdbc77145f3cebd5f873887d51f31d990ba3fb6d2818e9f"

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
