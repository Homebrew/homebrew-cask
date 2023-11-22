cask "dcp-o-matic-editor" do
  version "2.16.67"
  sha256 "69ee6c46bf3cfd450c967fcaf8d1c8afda8efeedaf32327f3d71ce8339436352"

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
