cask "onlook" do
  arch arm: "arm64", intel: "x64"

  version "0.2.30"
  sha256 arm:   "d209e137a8241b0b21c2b160af88484a69a40bc21f048e1946fefced13d425fc",
         intel: "c365973a82683deae0319077e1126c68e177d19c23f1c24454055d1fe724f350"

  url "https://github.com/onlook-dev/onlook/releases/download/v#{version}/Onlook-#{arch}.dmg",
      verified: "github.com/onlook-dev/onlook/"
  name "Onlook"
  desc "Open-source visual editor for React apps"
  homepage "https://onlook.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Onlook.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.onlook.studio.sfl*",
    "~/Library/Application Support/Onlook",
    "~/Library/Logs/Onlook",
    "~/Library/Preferences/dev.onlook.studio.plist",
  ]
end
