cask "dcp-o-matic-kdm-creator" do
  version "2.18.15"
  sha256 "ccbaaca5716ce2bea5e1810dd08d2f8dbb163a62177f8fc2d4b9fe2e5c6a9300"

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
