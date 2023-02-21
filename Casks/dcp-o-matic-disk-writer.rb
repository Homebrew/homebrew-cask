cask "dcp-o-matic-disk-writer" do
  version "2.16.42"
  sha256 "c83ab6e130b1cbbc01559d4a8f5410cad795b01d7436c16a4bc29a5d1f6cbee0"

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
