cask "dcp-o-matic-editor" do
  version "2.18.11"
  sha256 "2918ae84f8bcd15729e3e6eeaff43b6bf30b52752b6dff3b4fb3972b13abcae3"

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
