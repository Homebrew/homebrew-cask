cask "dcp-o-matic-kdm-creator" do
  version "2.16.99"
  sha256 "931949e29ebb82c00620abfce5e50ab3f0f50361581df24e468fb6de500a3e6c"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
