cask "dcp-o-matic-editor" do
  version "2.16.87"
  sha256 "3565dabd0f2adaed2d3f391ebabdebded3d6303f594c5d4216cb21cbf232dec1"

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
