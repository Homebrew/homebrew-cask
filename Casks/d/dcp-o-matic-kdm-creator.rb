cask "dcp-o-matic-kdm-creator" do
  version "2.16.66"
  sha256 "6f43a8b6c25d15e0fb0cc4fa7ee19921cccc47dd3acbb89b4929dd236c1a9604"

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
