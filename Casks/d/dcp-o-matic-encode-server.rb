cask "dcp-o-matic-encode-server" do
  version "2.16.87"
  sha256 "916b3687d723dbef6a14d1e4d1bacd85e2d4610f6054563381d50944cfbc3761"

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
