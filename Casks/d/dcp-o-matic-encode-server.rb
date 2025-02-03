cask "dcp-o-matic-encode-server" do
  version "2.18.10"
  sha256 "72f507aa7e5e1ddb03e0eee04f1ff94594e7a832014c25c0bf40707f71b2518f"

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
