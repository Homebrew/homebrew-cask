cask "tex-live-utility" do
  version "1.55"
  sha256 "c344a0f43f03d644e36d282f2b08e0d5009c984fea7d69295277d2457b8c8099"

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.zip"
  name "TeX Live Utility"
  desc "Graphical user interface for TeX Live Manager"
  homepage "https://github.com/amaxwell/tlutility"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

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
