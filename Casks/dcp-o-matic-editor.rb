cask "dcp-o-matic-editor" do
  version "2.16.47"
  sha256 "6f400be7f1ae0acf7646fcaf96b69436738cf5fc152dccc99727bbf485a42888"

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
