cask "djstudio" do
  on_mojave :or_older do
    version "2.6.28"
    sha256 "a24739ad73b5fbda7c64aaae320b1486622c669ba3dc414d692def6026d2639d"

    url "https://github.com/AppMachine/dj-studio-app-updates/releases/download/v#{version}/DJ.Studio-#{version}.dmg",
        verified: "github.com/AppMachine/dj-studio-app-updates/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    arch arm: "-arm64"

    version "3.0.19"
    sha256 arm:   "8eb5f3368c3b50ca92f4c3c0e52d8c74ec221689c41b47dd1cabbb4e8a24d339",
           intel: "3b7ad19d2d25eb5f5b110295245f9a2fab911571eddad8ffd640d6d325eb9a88"

    url "https://github.com/AppMachine/dj-studio-app-updates/releases/download/v#{version}/DJ.Studio-#{version}#{arch}.dmg",
        verified: "github.com/AppMachine/dj-studio-app-updates/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "DJ.Studio"
  desc "DAW for DJs"
  homepage "https://dj.studio/"

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
