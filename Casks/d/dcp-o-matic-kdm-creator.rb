cask "dcp-o-matic-kdm-creator" do
  version "2.16.74"
  sha256 "ba69a2d72b7121430178591f1cc14b6b680dd54486288c50d4841e2f5c031a67"

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
