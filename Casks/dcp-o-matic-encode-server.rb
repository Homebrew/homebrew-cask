cask "dcp-o-matic-encode-server" do
  version "2.16.46"
  sha256 "d7729ad832ff732ec451337db859e6b59a171f9d9d931f5eeeac373e9a39c896"

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
