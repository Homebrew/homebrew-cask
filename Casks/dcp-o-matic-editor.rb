cask "dcp-o-matic-editor" do
  version "2.16.28"
  sha256 "744cbe1ab7a1555977ff2e72e44c3a901e368399dea5daf25e58f6f8f547fa16"

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
