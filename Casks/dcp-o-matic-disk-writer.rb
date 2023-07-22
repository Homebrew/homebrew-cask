cask "dcp-o-matic-disk-writer" do
  version "2.16.60"
  sha256 "d0824af3357d64afdd06b4f18582f2a8bf48e4873123c3fa4a626075bbbd1726"

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
