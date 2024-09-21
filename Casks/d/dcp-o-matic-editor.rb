cask "dcp-o-matic-editor" do
  version "2.16.93"
  sha256 "795df1e6d31b8c0595dd1cd6f8d398ea777ad1a9edb4ea16ecab0b23966fbcd5"

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
