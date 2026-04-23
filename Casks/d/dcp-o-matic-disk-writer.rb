cask "dcp-o-matic-disk-writer" do
  version "2.18.39"
  sha256 "b52eccd18e48f3c0a65aa39eaade0bb5b525179f0889f1529a810252530d5555"

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
