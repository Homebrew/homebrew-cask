cask "dcp-o-matic-disk-writer" do
  version "2.16.24"
  sha256 "be8b160dc87987b7e362ec3dddb9d9c013eade775a95a2ec8e9cdae2f7ea0cf0"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
