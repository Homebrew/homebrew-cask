cask "notepadexe" do
  version "1.4.1605"
  sha256 "7c3cec429b3c1379515395cc5d14ffb1f79a5e8305182f003a5c996fdfa6be1a"

  url "https://github.com/notepadhq/notepadexe-public/releases/download/#{version}/Notepad.zip",
      verified: "github.com/notepadhq/notepadexe-public/releases/download/"
  name "Notepad.exe"
  desc "Lightweight code editor"
  homepage "https://notepadexe.com/"

  livecheck do
    url "https://softwareupdate-notepadexe.swift.best/notepadexe-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Notepad.exe.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/best.swift.notepad.sfl*",
    "~/Library/Application Support/Notepad.exe",
    "~/Library/Autosave Information/Notepad.exe",
    "~/Library/Caches/Notepad.exe",
    "~/Library/Caches/SentryCrash/Notepad.exe",
    "~/Library/HTTPStorages/best.swift.Notepad",
    "~/Library/Notepad.exe",
    "~/Library/Preferences/best.swift.Notepad.plist",
  ]
end
