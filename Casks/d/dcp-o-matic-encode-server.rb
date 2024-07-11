cask "dcp-o-matic-encode-server" do
  version "2.16.89"
  sha256 "d71fe390b1bab7a0eed9f2a22e5d6df6434d3b15cdeaf665912c20e5d84107a8"

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
