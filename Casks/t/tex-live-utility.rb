cask "tex-live-utility" do
  version "1.57"
  sha256 "e738c49250a1b62568bdf9d8333e6cfbd57b08185659073f2ab7a6103881dce4"

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.zip"
  name "TeX Live Utility"
  desc "Graphical user interface for TeX Live Manager"
  homepage "https://github.com/amaxwell/tlutility"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "TeX Live Utility.app"

  zap trash: [
    "~/Library/Application Support/TeX Live Utility",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*",
    "~/Library/Caches/com.googlecode.mactlmgr.tlu",
    "~/Library/HTTPStorages/com.googlecode.mactlmgr.tlu",
    "~/Library/HTTPStorages/com.googlecode.mactlmgr.tlu.binarycookies",
    "~/Library/Preferences/com.googlecode.mactlmgr.tlu.plist",
    "~/Library/Saved Application State/com.googlecode.mactlmgr.tlu.savedState",
  ]
end
