cask "dcp-o-matic-editor" do
  version "2.18.9"
  sha256 "bc2ce580356dac0b523df0292b7eac0e2cb0f959db6b1efb91b0d73afc3c3c4c"

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
