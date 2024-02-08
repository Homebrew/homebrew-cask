cask "dcp-o-matic-encode-server" do
  version "2.16.74"
  sha256 "b77f2441412f10969b27fba555fd5fc4f407b0fb614aba370d42b45c9d2b6bb6"

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
