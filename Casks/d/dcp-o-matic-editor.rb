cask "dcp-o-matic-editor" do
  version "2.16.78"
  sha256 "6d8748964ddfd64ab699ef954c86a5376d9df7537ca3830ad4e074da5dd1fe86"

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
