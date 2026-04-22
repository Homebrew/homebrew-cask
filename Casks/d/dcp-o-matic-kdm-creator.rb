cask "dcp-o-matic-kdm-creator" do
  version "2.18.38"
  sha256 "094081cef22976e50898175f7b9be3d43cf909f10d796f64f6015d66e3f098f4"

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
