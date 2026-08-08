cask "dcp-o-matic-playlist-editor" do
  version "2.19.0"
  sha256 "444a630a49a480065936c8dd660a0516035eae47bad6191a664e5d5c605ba7f6"

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
