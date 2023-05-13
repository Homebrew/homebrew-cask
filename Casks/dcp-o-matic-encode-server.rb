cask "dcp-o-matic-encode-server" do
  version "2.16.55"
  sha256 "16e9219ee6a41bbe245d84ca5f78822298eed8f50b98abef4a4c00026522bb4d"

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
