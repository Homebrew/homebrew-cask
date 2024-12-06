cask "djstudio" do
  arch arm: "-arm64"

  on_mojave :or_older do
    version "2.6.28"
    sha256 "a24739ad73b5fbda7c64aaae320b1486622c669ba3dc414d692def6026d2639d"

    url "https://github.com/AppMachine/dj-studio-app-updates/releases/download/v#{version}/DJ.Studio-#{version}.dmg"
  end
  on_catalina :or_newer do
    version "2.6.108"
    sha256 arm:   "9eba050d1a9797a28de6c6ad798f840d44e3195e441ddccea03e7358fe72f937",
           intel: "40c8f9585d0cd2f982710c58262e18d493acb589a3a4cd02cede959cc57cc91b"

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
