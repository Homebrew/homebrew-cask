cask "notepadexe" do
  version "1.6.3"
  sha256 "6d7b48a506a31ce506f60ac5ff91ad6c1a39b1024c734aad36dd69a2533797ef"

  url "https://github.com/notepadhq/notepadexe-public/releases/download/#{version}/Notepad.zip"
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
