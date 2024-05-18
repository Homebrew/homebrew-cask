cask "dcp-o-matic-kdm-creator" do
  version "2.16.85"
  sha256 "0a90ebc726947b58cb624c86cdcc03147fc0c7e21b2a30003cbbd12f7add13c7"

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
