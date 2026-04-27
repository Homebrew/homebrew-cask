cask "notepad++" do
  version "1.0.4"
  sha256 "a243dd7c555c3d8e6319a69517f8965c86da601b31d82192322c555c7267cb4f"

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
