cask "notepadexe" do
  version "1.4.1500"
  sha256 "d6792ef8e9306e4fcb1fc82d39e04711129d2b38557cdc67c9006582f5173e52"

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
    "~/Library/Application Support/Notepad.exe",
    "~/Library/Autosave Information/Notepad.exe",
    "~/Library/Caches/Notepad.exe",
    "~/Library/HTTPStorages/best.swift.Notepad",
    "~/Library/Notepad.exe",
    "~/Library/Preferences/best.swift.Notepad.plist",
  ]
end
