cask "dcp-o-matic-editor" do
  version "2.19.2"
  sha256 "6b392fcabae1bed2deb9c91d4a54840f0fe9dba8e438e977a320cd9f891c9c87"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on :macos

  app "DCP-o-matic #{version.major} Editor.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.editor.plist"
end
