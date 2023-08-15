cask "dcp-o-matic-editor" do
  version "2.16.61"
  sha256 "f2bd4fe79774b79686a23771a3797a9c506ca0d4e9f392ec8f457f36f7d41e52"

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
