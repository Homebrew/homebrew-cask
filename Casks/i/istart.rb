cask "istart" do
  version "1.2"
  sha256 "d0dfd87146aaf8ae1419593ce5b5f6dbe9ebfcc82e7864dc906446a094c86da5"
  
  url
  "https://github.com/Pylogmon/iStart/releases/download/#{version}/iStart.app.zip",
      verified: "github.com/Pylogmon/iStart/"
  name "iStart"
  desc "Lightweight Start menu and application launcher for macOS"
  homepage "https://github.com/Pylogmon/iStart"
  
  depends_on macos: ">= :sonoma"
  
  app "iStart.app"
  
  zap trash: [
    "~/Library/Preferences/com.pylogmon.iStart.plist",
    "~/Library/Caches/com.pylogmon.iStart",
    "~/Library/Application Support/iStart",
  ]
end
