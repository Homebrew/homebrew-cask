cask "dcp-o-matic-editor" do
  version "2.16.97"
  sha256 "f5e41b8cc20f947da7866ac81714da02b9af3b7e6f5e3694bbc657c525074b0a"

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
