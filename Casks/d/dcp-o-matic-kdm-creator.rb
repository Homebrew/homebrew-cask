cask "dcp-o-matic-kdm-creator" do
  version "2.18.2"
  sha256 "413d63e3d6882da2c42af47645ab4f0bb4b7aa4f390d6c40fc85c5e5917a1f0e"

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
