cask "dcp-o-matic-editor" do
  version "2.16.50"
  sha256 "5c031edc6f5874ba3d5b4f62727d9643d821077ed3f9539b36f61f209329f40d"

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
