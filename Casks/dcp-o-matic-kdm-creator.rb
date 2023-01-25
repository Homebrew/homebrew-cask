cask "dcp-o-matic-kdm-creator" do
  version "2.16.41"
  sha256 "3811beb309523cbe9e1a4a7a99f621678a176904d6bad6146aed829859dd6863"

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
