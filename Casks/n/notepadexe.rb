cask "notepadexe" do
  version "1.5.19"
  sha256 "01f5d7e1945d4e255989ec3b56c335e8e4af459cbc19f258e6e73d9e8b3d12ba"

  url "https://github.com/notepadhq/notepadexe-public/releases/download/#{version}/Notepad.zip",
      verified: "github.com/notepadhq/notepadexe-public/releases/download/"
  name "Notepad.exe"
  desc "Lightweight code editor"
  homepage "https://notepadexe.com/"

  livecheck do
    url "https://softwareupdate.notepadexe.com/appcast/notepadexe-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Notepad.exe.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/best.swift.notepad.sfl*",
    "~/Library/Application Support/Notepad.exe",
    "~/Library/Autosave Information/Notepad.exe",
    "~/Library/Caches/best.swift.Notepad",
    "~/Library/Caches/Notepad.exe",
    "~/Library/Caches/SentryCrash/Notepad.exe",
    "~/Library/HTTPStorages/best.swift.Notepad",
    "~/Library/Notepad.exe",
    "~/Library/Preferences/best.swift.Notepad.plist",
  ]
end
