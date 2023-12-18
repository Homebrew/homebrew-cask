cask "dcp-o-matic-editor" do
  version "2.16.70"
  sha256 "538b1b69d497907811f6fe05d0d6ce82e191c975a24389f50694522ff1ea8691"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Editor.app"

  # No zap stanza required
end
