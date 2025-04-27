cask "dcp-o-matic-editor" do
  version "2.18.18"
  sha256 "8f0577cbbbd5b71c32a4fd485d526a39b7e4def07f884a02acf2b072d7951f48"

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
