cask "dcp-o-matic-kdm-creator" do
  version "2.18.43"
  sha256 "c3fa49365a1fe8acb21c32e2a6c92316bcfee33cf62e2fcedb366ab30bbfd406"

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
