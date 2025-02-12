cask "dcp-o-matic-kdm-creator" do
  version "2.18.11"
  sha256 "a902c42fa92ea9b3bb10342b1a572b06aed7e1521ba0667dded773d736f8a168"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
