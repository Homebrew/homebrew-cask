cask "dcp-o-matic-encode-server" do
  version "2.18.19"
  sha256 "d3fb956776da7a5a3da05a4e98597c3e66f1cbed76193c0fb0a81a5b0f3765d1"

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
