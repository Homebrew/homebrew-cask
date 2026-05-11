cask "dcp-o-matic-kdm-creator" do
  version "2.18.40"
  sha256 "f3e2232c951fecb38c3d47e83ab90512105cd7ab3459385acfaf7965ea666c6e"

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
