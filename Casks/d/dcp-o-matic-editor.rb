cask "dcp-o-matic-editor" do
  version "2.18.19"
  sha256 "b8ef48462fe2e91d2af8393651e8c18a3bf0ddad3e3cf0ce0e4b1ad6d5398ed9"

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
