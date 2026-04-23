cask "dcp-o-matic-kdm-creator" do
  version "2.18.39"
  sha256 "4ad13a8a5b00356a6ad92c8658612ab2af83f2b865f9cec03c58cddd142ca112"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
