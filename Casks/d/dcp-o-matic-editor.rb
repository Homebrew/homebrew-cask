cask "dcp-o-matic-editor" do
  version "2.18.44"
  sha256 "20d2be72c5eaa1e77fe44254b2f221280a4ab05a925b5c4e2a8bd0b18d148fbe"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
