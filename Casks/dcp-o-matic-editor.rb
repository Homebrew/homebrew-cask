cask "dcp-o-matic-editor" do
  version "2.16.32"
  sha256 "b0961b32b8e806fff8f25ed1fed095af0e4a0f800f4b64b17e38307632e9a839"

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
