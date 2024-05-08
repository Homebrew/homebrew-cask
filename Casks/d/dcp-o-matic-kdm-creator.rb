cask "dcp-o-matic-kdm-creator" do
  version "2.16.83"
  sha256 "a21087f28176bc22d260c0c63df57c9932166a6ef435d71129ddf50350ff52ff"

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
