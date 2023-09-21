cask "dcp-o-matic-disk-writer" do
  version "2.16.65"
  sha256 "5bb9233e39ff0dcceb1ddc99f697ee8f377773d2f3dd5fddc21109c22449b6c5"

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
