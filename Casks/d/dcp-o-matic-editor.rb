cask "dcp-o-matic-editor" do
  version "2.18.46"
  sha256 "2ef14c61823481da002608766ac7b61b7068965e04c5bc76285c54f31d611ad1"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Editor.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.editor.plist"
end
