cask "dcp-o-matic-disk-writer" do
  version "2.18.38"
  sha256 "2dca356da0e13911b1b41e3562324ad1fd78096c4165e537b80634e65d565c5a"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
