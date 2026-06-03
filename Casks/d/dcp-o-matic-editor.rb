cask "dcp-o-matic-editor" do
  version "2.18.42"
  sha256 "f8b28354affa93835c3e2bcc0328b190147c1027481d05cf725dc25547cab4c9"

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
