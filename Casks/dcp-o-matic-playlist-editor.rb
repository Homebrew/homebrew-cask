cask "dcp-o-matic-playlist-editor" do
  version "2.16.34"
  sha256 "c897defcb8980ebd8a6d1f3438896dcad36cb95d654c8812ff4ee06b4a75732a"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  # No zap stanza required
end
