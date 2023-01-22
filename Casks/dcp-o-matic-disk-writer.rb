cask "dcp-o-matic-disk-writer" do
  version "2.16.40"
  sha256 "c754c06b6c327897ce6d49d8de24f08cb11296d116e202c924cbb8db76c02044"

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
