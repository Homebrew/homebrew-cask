cask "dcp-o-matic-editor" do
  version "2.19.0"
  sha256 "93aa7aae8ea16f3a760202485593d134b24ffcfadcccd22008aa67a6bef4a340"

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
