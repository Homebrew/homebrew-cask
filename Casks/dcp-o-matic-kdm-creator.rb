cask "dcp-o-matic-kdm-creator" do
  version "2.16.50"
  sha256 "a0fdd86d2ae8b27a6999bb42cd033c41fbb53634e03193c85cd3d40e91c63e4f"

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
