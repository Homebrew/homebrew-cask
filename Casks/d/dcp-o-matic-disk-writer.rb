cask "dcp-o-matic-disk-writer" do
  version "2.18.14"
  sha256 "db16782bd5c69a3f477b283089b5bff84d0ada3a071063ce379d0b7e15b22595"

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
