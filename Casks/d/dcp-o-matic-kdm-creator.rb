cask "dcp-o-matic-kdm-creator" do
  version "2.18.42"
  sha256 "f13e57f84058d0e8edf4adcd54c2f786b690dd79e457bd294164cf1e4753bc13"

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
