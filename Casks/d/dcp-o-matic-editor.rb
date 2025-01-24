cask "dcp-o-matic-editor" do
  version "2.18.7"
  sha256 "170ff889c060d934923d7dcf59baeb016696c9eb9bfc2bc01977626b8d77bd2a"

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
