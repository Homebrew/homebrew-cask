cask "dcp-o-matic-editor" do
  version "2.16.39"
  sha256 "aa95d919f04f46ad4bf80e735a3cde79bb047d28ff5ae3e50458a93c2908e6db"

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
