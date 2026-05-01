cask "notepad-plus-plus-mac" do
  version "1.0.5"
  sha256 "e4ea508885760315678c54f1e012883a4266eca6ad602ed7b4086bff57af19cc"

  url "https://github.com/notepad-plus-plus-mac/notepad-plus-plus-macos/releases/download/v#{version}/Notepad%2B%2Bv#{version}.dmg",
      verified: "github.com/notepad-plus-plus-mac/notepad-plus-plus-macos/"
  name "Notepad++"
  desc "Source code editor and Notepad replacement"
  homepage "https://notepad-plus-plus-mac.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Notepad++.app"

  zap trash: [
    "~/Library/Application Support/Notepad++",
    "~/Library/Caches/org.notepadplusplus.mac",
    "~/Library/Preferences/org.notepadplusplus.mac.plist",
    "~/Library/Saved Application State/org.notepadplusplus.mac.savedState",
  ]
end
