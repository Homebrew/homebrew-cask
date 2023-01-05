cask "dcp-o-matic-kdm-creator" do
  version "2.16.39"
  sha256 "32b1926c5d93533c87ba0bf38ab740747303a33ed825a7a7e5b0f2fa8f7c21d7"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
