cask "dcp-o-matic-editor" do
  version "2.18.43"
  sha256 "9b8de17a353dd5a93f49a94bed6bb639aee4e911ef253bdacf8a7af8ace7cc59"

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
