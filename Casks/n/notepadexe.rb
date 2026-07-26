cask "notepadexe" do
  version "1.5.9"
  sha256 "bbc5c6a70ca1be21f8769b4e72ad3e16dd3ae4a40d79c705a4fd161a9b3239fa"

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
