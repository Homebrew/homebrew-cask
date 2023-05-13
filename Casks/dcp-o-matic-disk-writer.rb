cask "dcp-o-matic-disk-writer" do
  version "2.16.55"
  sha256 "af24a60adac56b70657f65fe6bace8ef3594cfb2dc48478c331c1b65bec54a9f"

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
