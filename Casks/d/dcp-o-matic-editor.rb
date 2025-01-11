cask "dcp-o-matic-editor" do
  version "2.18.3"
  sha256 "894f639866a9271a42adce76559879074fd2a8ffde5febb10aeedc1d0257e92f"

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
