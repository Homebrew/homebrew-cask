cask "id3-editor" do
  version "1.29.51"
  sha256 "8a48b592dddf5c3e0e9068595edb3e386272496d4c81e2b94bbcbb7462bd8074"

  url "http://www.pa-software.com/release/ID3Editor.arm.#{version}.dmg"
  name "ID3 Editor"
  desc "MP3 and AIFF ID3 tag editor"
  homepage "http://www.pa-software.com/id3editor/"

  livecheck do
    url "http://www.pa-software.com/id3editor/history/"
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "ID3 Editor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pas.id3editor.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/ID3 Editor Help*",
    "~/Library/Logs/id3ed.log",
    "~/Library/Preferences/com.pas.id3editor.plist",
    "~/Library/Saved Application State/com.pas.id3editor.savedState",
  ]
end
