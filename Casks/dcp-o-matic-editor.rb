cask "dcp-o-matic-editor" do
  version "2.16.46"
  sha256 "f2401b240eccecf8c67aadaed6e1ff183ec89fa9a369ecf2e411c470d99daf00"

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
