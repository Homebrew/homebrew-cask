cask "dcp-o-matic-encode-server" do
  version "2.18.18"
  sha256 "349061a06b864aecdaa48f87909a387c9b5e1744db109ff36a7ef2de9f8adc45"

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
