cask "dcp-o-matic-editor" do
  version "2.16.64"
  sha256 "8433bc7877aa921ed5ffcbd499d01fb23243041a53e481612bf0bd87ccd88740"

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
