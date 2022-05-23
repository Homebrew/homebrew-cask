cask "dcp-o-matic-kdm-creator" do
  version "2.16.10"
  sha256 "486192029df7fa75d6ad6992a09752dda87e7cb1d0fa3b518f897294a2542f74"

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
