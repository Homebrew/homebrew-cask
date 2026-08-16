cask "dcp-o-matic-playlist-editor" do
  version "2.19.1"
  sha256 "2db4b12f3866b05b19d6e6a798cabaaa02a32538434df752f94a750da516d5f9"

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
