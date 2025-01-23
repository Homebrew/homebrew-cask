cask "dcp-o-matic-editor" do
  version "2.18.6"
  sha256 "b967bb09edfe13875c97e5dcb3665a3d44fe7d98ea456e0276f8aa31c056de5c"

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
