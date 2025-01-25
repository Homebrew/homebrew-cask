cask "dcp-o-matic-kdm-creator" do
  version "2.18.8"
  sha256 "d6bf8e6ecb408ca1bb3ca30032fbd583be89b26ad86cd626cff33bb3687a323f"

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
