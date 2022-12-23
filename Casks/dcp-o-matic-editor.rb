cask "dcp-o-matic-editor" do
  version "2.16.36"
  sha256 "19c1f2bb1b8399edf415cacbf1e7d446eeac5d375389eb041ab56473fa1adbfb"

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
