cask "dcp-o-matic-disk-writer" do
  version "2.16.18"
  sha256 "9c8b6d172c16db5d4397e42cebd63d082fdf1353697c06071082a912da4d519f"

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
