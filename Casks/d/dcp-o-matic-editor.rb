cask "dcp-o-matic-editor" do
  version "2.18.13"
  sha256 "43e51a572e6d764e500272e2bfc4fd6075cbc14e67c7a50d6e1934cbb454fca8"

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
