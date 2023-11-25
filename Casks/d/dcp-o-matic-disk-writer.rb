cask "dcp-o-matic-disk-writer" do
  version "2.16.68"
  sha256 "dbe76b4d1d14e829da502346f078d976cfb3679a2a11d690fc14053fcde1dc21"

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
