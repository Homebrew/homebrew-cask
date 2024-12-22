cask "dcp-o-matic-kdm-creator" do
  version "2.18.0"
  sha256 "7a0bd2915920a1f04be6a1a987c48f3496dc8a53e1b42de20714b6d049bab195"

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
