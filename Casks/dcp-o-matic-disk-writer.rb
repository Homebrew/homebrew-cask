cask "dcp-o-matic-disk-writer" do
  version "2.16.38"
  sha256 "fe27c4da0354d3e0e82fcbf5ea6e8ce386e6a0d123e3b5b8c5b4d9c2a8306af9"

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
