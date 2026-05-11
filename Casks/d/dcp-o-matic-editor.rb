cask "dcp-o-matic-editor" do
  version "2.18.40"
  sha256 "929e3b25b5bca2bfa85dc778815340f8c9d95ebd9d93555e8648af7aa920f171"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
