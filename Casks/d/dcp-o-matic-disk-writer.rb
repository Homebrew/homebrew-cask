cask "dcp-o-matic-disk-writer" do
  version "2.19.2"
  sha256 "08bb86d71efb9eb245e996d39c2a37aa865b04b0975d4aceddf501e960a95fef"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on :macos

  app "DCP-o-matic #{version.major} Disk Writer.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.disk.plist"
end
