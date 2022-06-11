cask "dcp-o-matic-kdm-creator" do
  version "2.16.13"
  sha256 "1f2a4890f31954ea788232f7ba8ab53e87bb171d7f5ad1c8b7e8f96e0f69fe18"

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
