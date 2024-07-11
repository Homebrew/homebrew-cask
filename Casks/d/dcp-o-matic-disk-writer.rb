cask "dcp-o-matic-disk-writer" do
  version "2.16.89"
  sha256 "7ce928cef70843173a1dd554aa9c271e7743507815cde71dd4dc287b51d53776"

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
