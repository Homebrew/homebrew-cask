cask "dcp-o-matic-editor" do
  version "2.16.99"
  sha256 "5b2d18671778d667f1e0e671cfbe4a767d4521f648ce04e0b11a5c1123e01e2e"

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
