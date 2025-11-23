cask "psst" do
  version :latest
  sha256 :no_check

  url "https://github.com/jpochyla/psst/releases/latest/download/Psst.dmg"
  name "Psst"
  desc "Spotify client"
  homepage "https://github.com/jpochyla/psst/"

  depends_on macos: ">= :big_sur"

  app "Psst.app"

  zap trash: [
    "~/Library/Application Support/Psst",
    "~/Library/Caches/com.jpochyla.psst",
    "~/Library/Caches/Psst",
    "~/Library/HTTPStorages/com.jpochyla.psst",
    "~/Library/Preferences/com.jpochyla.psst.plist",
    "~/Library/Saved Application State/com.jpochyla.psst.savedState",
  ]
end
