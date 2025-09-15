cask "djstudio" do
  arch arm: "-arm64"

  version "3.1.31"
  sha256 arm:   "c2096c5b03ca1f86bc359b0c3d97404fe53527d5337854599fbeff9915db27e5",
         intel: "4c35eb09cb8adc87dc3c084ba31cdefae4b75ebdcfd64617a13784cb3b9a13f7"

  url "https://github.com/AppMachine/dj-studio-app-updates/releases/download/v#{version}/DJ.Studio-#{version}#{arch}.dmg",
      verified: "github.com/AppMachine/dj-studio-app-updates/"
  name "DJ.Studio"
  desc "DAW for DJs"
  homepage "https://dj.studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
