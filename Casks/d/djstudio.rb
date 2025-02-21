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

    version "3.1.2"
    sha256 arm:   "101068cd646fc57c324f92558c125b79034bc024bbb5b96e5b067461c7e1a8c4",
           intel: "7b88e4837d380c3e9a620de97eccdde3eda3806a5e4481e1df9c3bb97838af45"

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
