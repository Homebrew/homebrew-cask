cask "dcp-o-matic-kdm-creator" do
  version "2.16.18"
  sha256 "ed59c78abb76a237275ec9dd7a5429097b634d46f6fd206dcd5256653a459a09"

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
