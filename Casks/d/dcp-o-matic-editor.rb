cask "dcp-o-matic-editor" do
  version "2.16.84"
  sha256 "8dfa976f17b4f8a0288e48153c0074e954bac99a0dcd28d4ad1bbf225c2ef601"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
