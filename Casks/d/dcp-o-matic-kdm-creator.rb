cask "dcp-o-matic-kdm-creator" do
  version "2.16.80"
  sha256 "c962f4770f0a0e6022d74ccbb177a50cc0702d41739225585f0ea67bbc3d7877"

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
