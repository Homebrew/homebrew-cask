cask "dcp-o-matic-editor" do
  version "2.16.81"
  sha256 "6462e7bee56e15a4e55d15bbb4775a7be7e2b326e6a3049b0ce11a67bf2251f4"

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
