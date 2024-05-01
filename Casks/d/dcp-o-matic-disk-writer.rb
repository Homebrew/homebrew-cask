cask "dcp-o-matic-disk-writer" do
  version "2.16.82"
  sha256 "ebca0fc5be137b0c5fa685a12effa2fee01c2ab0ea20a1b91162edadc0daa8b0"

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
