cask "dcp-o-matic-editor" do
  version "2.16.26"
  sha256 "2157b3a21f54d5efd24c5cadeb390ea6abc3355b98c4d3ed66f81f0bf0a4ae6b"

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
