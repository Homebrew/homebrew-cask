cask "dcp-o-matic-disk-writer" do
  version "2.16.59"
  sha256 "46c559cb6ed7f857ee9efc072ac0019b04a7fdb17c73089aceaafa8b20a23323"

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
