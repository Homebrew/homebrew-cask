cask "dcp-o-matic-batch-converter" do
  version "2.18.46"
  sha256 "6d2064b20a1b83b8eb59d46978be25223ced89c2b16d01a5b78f2c29056406b0"

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
