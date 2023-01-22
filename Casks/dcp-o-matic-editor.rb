cask "dcp-o-matic-editor" do
  version "2.16.40"
  sha256 "526f955620bd7984017c200ec1d1e0791dc9e012a5416b6aa208e11d34681b67"

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
