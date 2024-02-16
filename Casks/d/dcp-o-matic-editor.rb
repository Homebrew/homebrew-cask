cask "dcp-o-matic-editor" do
  version "2.16.76"
  sha256 "3343f9019e261d853c66b2ae09dd0355d4b8550be0d851064bb0e36b9013a186"

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
