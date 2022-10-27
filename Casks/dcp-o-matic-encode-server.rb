cask "dcp-o-matic-encode-server" do
  version "2.16.32"
  sha256 "b7277297d758574a4bea64a1b364083cd7ecf2c5f3f028698a957415ef59e88e"

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
