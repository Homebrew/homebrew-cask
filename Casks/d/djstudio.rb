cask "djstudio" do
  arch arm: "-arm64"

  on_mojave :or_older do
    version "2.6.28"
    sha256 "a24739ad73b5fbda7c64aaae320b1486622c669ba3dc414d692def6026d2639d"

    url "https://github.com/AppMachine/dj-studio-app-updates/releases/download/v#{version}/DJ.Studio-#{version}.dmg"
  end
  on_catalina :or_newer do
    version "3.0.1"
    sha256 arm:   "38086be6c856e1cf362e409a7e89fa7d080787c7fe93549ae8c9f7c2bae4794a",
           intel: "42b3e753634014a0d6823617f1fd27bd9fdac5f48aa4f56664dec608d9bb3878"

    url "https://download.dj.studio/DJ.Studio-#{version}#{arch}.dmg"
  end

  name "DJ.Studio"
  desc "DAW for DJs"
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
