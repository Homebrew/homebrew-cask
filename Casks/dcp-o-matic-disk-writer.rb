cask "dcp-o-matic-disk-writer" do
  version "2.16.17"
  sha256 "b06270dee767146155fdd722948cfe2bb92b1f77f84005fdf8dcb13aa10f835e"

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
