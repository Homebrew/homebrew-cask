cask "dcp-o-matic-encode-server" do
  version "2.16.73"
  sha256 "077a8d80ff4adf67d396211069d092f28c8101a40585f2f09d7e3e7595226175"

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
