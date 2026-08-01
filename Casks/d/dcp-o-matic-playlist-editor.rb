cask "dcp-o-matic-playlist-editor" do
  version "2.18.46"
  sha256 "7116970e5a4c7114eaa2c96e695f518c8e757ba7eca3538e434b36f447f552c2"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-playlist&version=#{version}"
  name "DCP-o-matic Playlist Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Playlist Editor.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.playlist.plist"
end
