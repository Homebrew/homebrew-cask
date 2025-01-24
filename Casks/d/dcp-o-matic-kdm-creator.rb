cask "dcp-o-matic-kdm-creator" do
  version "2.18.7"
  sha256 "338e0eb4f8e7835ae00e25c039d0d316a8284b24e073fce535b9d17c5e7a32f1"

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
