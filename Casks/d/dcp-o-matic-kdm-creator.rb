cask "dcp-o-matic-kdm-creator" do
  version "2.16.67"
  sha256 "fb47e2eb6849054db960521652361118a3d66df3d98111ae31a9ce9f20f245b5"

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
