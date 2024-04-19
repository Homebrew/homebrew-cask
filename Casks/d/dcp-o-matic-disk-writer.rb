cask "dcp-o-matic-disk-writer" do
  version "2.16.80"
  sha256 "f74a1248fd3e48cda552b19b8b57f959d57811ceaeabe62f2f961f758dd82057"

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
