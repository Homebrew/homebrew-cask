cask "dcp-o-matic-editor" do
  version "2.18.12"
  sha256 "1732fcafdf225a7578332c4e650e2329b4ea3016feef3061cccd7b86b7fd58b4"

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
