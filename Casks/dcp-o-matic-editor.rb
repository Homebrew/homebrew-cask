cask "dcp-o-matic-editor" do
  version "2.16.24"
  sha256 "ddf2cab2ac4619ca6491b7b6819599b172acab07ee6fa03a5d8f07dac2496cec"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
