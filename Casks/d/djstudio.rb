cask "djstudio" do
  arch arm: "-arm64"

  on_mojave :or_older do
    version "2.6.28"
    sha256 "a24739ad73b5fbda7c64aaae320b1486622c669ba3dc414d692def6026d2639d"

    url "https://github.com/AppMachine/dj-studio-app-updates/releases/download/v#{version}/DJ.Studio-#{version}.dmg"
  end
  on_catalina :or_newer do
    version "2.6.106"
    sha256 arm:   "a67b4046f7b7915cb61b05ec3ad1f87731687ef161f74c844ffc8243c8c438dd",
           intel: "6f2e1ac8a76d9f06ae530634fe282f89fd7db4c5c8bc247ca67b4c8998fefd95"

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
