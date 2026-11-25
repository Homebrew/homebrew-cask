cask "dcp-o-matic-batch-converter" do
  version "2.19.2"
  sha256 "f44580e6069c39d9a9333adf1401b7856051f2c972daf5c88c81dad1460826ff"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on :macos

  app "DCP-o-matic #{version.major} Batch converter.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.batch.plist"
end
