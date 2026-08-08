cask "dcp-o-matic-disk-writer" do
  version "2.19.0"
  sha256 "8d50c11bb35b0b0dc2d840bf3c9a3f5945c76ed8e8ed10ae08b2878d9bdf5c06"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Disk Writer.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.disk.plist"
end
