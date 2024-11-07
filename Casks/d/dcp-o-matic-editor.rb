cask "dcp-o-matic-editor" do
  version "2.16.96"
  sha256 "8d516a28e0e54c2917de8cf26faf296a307d61b20b4432fc0717daa9c111720c"

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
