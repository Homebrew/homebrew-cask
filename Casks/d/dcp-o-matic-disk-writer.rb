cask "dcp-o-matic-disk-writer" do
  version "2.18.11"
  sha256 "1e4e7f57cc8819fb32ab83ee6325c500e6e3ae08080f7833ecafcf8eba1e8759"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-disk&version=#{version}"
  name "DCP-o-matic Disk Writer"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Disk Writer.app"

  # No zap stanza required
end
