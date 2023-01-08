cask "dcp-o-matic-batch-converter" do
  version "2.16.40"
  sha256 "bd6b9c644ac4e6f6a76d456b7abb7dbe1b476befe2f00af2886c3090618d030c"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-batch&version=#{version}"
  name "DCP-o-matic Batch converter"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Batch converter.app"

  # No zap stanza required
end
