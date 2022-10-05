cask "dcp-o-matic-kdm-creator" do
  version "2.16.29"
  sha256 "e62cb2a32add74a290c53ccde90d385e857a169770126b16cbb62d55fd630e81"

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
