cask "dcp-o-matic-batch-converter" do
  version "2.19.1"
  sha256 "11daf30bc55c846c8fdfa4938112fde880a4468fa0aae4e4b3c4a0de405d5c8a"

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
