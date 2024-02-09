cask "dcp-o-matic-encode-server" do
  version "2.16.75"
  sha256 "526dc3f1fc82d8ff16934ce28a63c45c7f0841ea44ecd3772be1dbd6b134e83d"

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
