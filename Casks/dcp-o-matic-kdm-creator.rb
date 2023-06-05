cask "dcp-o-matic-kdm-creator" do
  version "2.16.58"
  sha256 "b68c27854f691d8c4d7d4f8c0fd3492325421d84a60b8b7c2b9d7c96cd436d2d"

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
