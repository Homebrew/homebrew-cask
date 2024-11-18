cask "djstudio" do
  arch arm: "-arm64", intel: ""

  on_mojave :or_older do
    version "2.6.28"
    sha256 "a24739ad73b5fbda7c64aaae320b1486622c669ba3dc414d692def6026d2639d"

    url "https://github.com/AppMachine/dj-studio-app-updates/releases/download/v#{version}/DJ.Studio-#{version}.dmg"
  end
  on_catalina :or_newer do
    version "2.6.104"
    sha256 arm:   "8f6fb08230fb15044f83577ec4ec32735a4983cfed5e3a0cf9c4342dd38a55b7",
           intel: "cbb417f2802c0221b91d857c610fd583bfa9face941c8337c90977e1d0f98f5e"

    url "https://download.dj.studio/DJ.Studio-#{version}#{arch}.dmg"
  end

  name "DJ.Studio"
  desc "Ultimate DAW for DJs"
  homepage "https://dj.studio/"

  livecheck do
    url "https://github.com/AppMachine/dj-studio-app-updates"
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "DJ.Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dj.studio.app.sfl*",
    "~/Library/Application Support/DJ.Studio",
    "~/Library/Application Support/dj.studio.app",
    "~/Library/Preferences/dj.studio.app.plist",
    "~/Library/Saved Application State/dj.studio.app.savedState",
    "~/Music/DJ.Studio",
  ]
end
