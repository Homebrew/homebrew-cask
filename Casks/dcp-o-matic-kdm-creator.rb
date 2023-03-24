cask "dcp-o-matic-kdm-creator" do
  version "2.16.48"
  sha256 "561fda41858c3e70a3cff136779b059b3eb374527fa2dcd96c0f61e330ecef67"

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
