cask "dcp-o-matic-kdm-creator" do
  version "2.18.18"
  sha256 "3b2ff59ca17db1f7d2bcd448fcf6ac7237ee293fc7631be4d99171273ca0f3d0"

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
