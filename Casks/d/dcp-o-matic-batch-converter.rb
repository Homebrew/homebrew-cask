cask "dcp-o-matic-batch-converter" do
  version "2.19.0"
  sha256 "75e74cc069223b62c36936109a54a7d0d5170f00ce6c438b46de62d249d0da90"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Batch converter.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.batch.plist"
end
