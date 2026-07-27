cask "dcp-o-matic-playlist-editor" do
  version "2.18.45"
  sha256 "f32ce237e21aee60c50bfa2448c43a4a8e5c33216fab7f5c02bb3c59627d76b0"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
