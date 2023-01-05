cask "dcp-o-matic-playlist-editor" do
  version "2.16.39"
  sha256 "fe1c08b33dd9b9966ac62ab7080cff37b29f7ae2376bec9bf3e3a2b935b428b1"

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
