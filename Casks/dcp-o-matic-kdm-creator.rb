cask "dcp-o-matic-kdm-creator" do
  version "2.16.24"
  sha256 "be4ec1060b97d0672fc37d73e161ab54d2a6354edb3895b72ddca4c88e8f1706"

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
