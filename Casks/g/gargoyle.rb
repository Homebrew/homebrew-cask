cask "gargoyle" do
  version "2026.1.1"
  sha256 "d3c40f7f032fbdbe589f6a33c384071a860e6570388139cb4d18c291bd085119"

  url "https://github.com/garglk/garglk/releases/download/#{version}/Gargoyle-#{version}.dmg"
  name "Gargoyle"
  desc "IO layer for interactive fiction players"
  homepage "https://github.com/garglk/garglk"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gargoyle.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.garglk.launcher.sfl*",
    "~/Library/Preferences/com.googlecode.garglk.Launcher.plist",
    "~/Library/Saved Application State/com.googlecode.garglk.Launcher.savedState",
  ]
end
