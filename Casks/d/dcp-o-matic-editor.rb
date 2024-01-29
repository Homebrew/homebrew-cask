cask "dcp-o-matic-editor" do
  version "2.16.73"
  sha256 "5077e3a27b88f3464d04c0b7f77e3cbef4b4e41a03054724935fa740f32fd130"

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
