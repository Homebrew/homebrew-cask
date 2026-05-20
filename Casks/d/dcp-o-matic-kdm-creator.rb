cask "dcp-o-matic-kdm-creator" do
  version "2.18.41"
  sha256 "bbed65cc6bff85a742208b0a5a5d2c55db062e0f1a086e0382e2567a0bcb1151"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} KDM Creator.app"

  # No zap stanza required
end
