cask "dcp-o-matic-kdm-creator" do
  version "2.16.30"
  sha256 "9c03bcfb3f20c0073e78a86c3d38a4ec465d8e23ec1dfe798e3c05a1cbc3d6a1"

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
