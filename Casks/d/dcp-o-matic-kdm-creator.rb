cask "dcp-o-matic-kdm-creator" do
  version "2.18.5"
  sha256 "10a5ab618795fc48805a0089eee9dbb74496d2075e00ab68d97f16878ca0d8c1"

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
