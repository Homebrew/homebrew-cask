cask "socialstream" do
  arch arm: "arm64", intel: "x64"

  version "0.4.40"
  sha256 arm:   "0f4e9817552218fe08e33ade8bd6561804ee73c568340e5dd939ed8eb2b245a9",
         intel: "446b95fa6de9eb9c4a81c167478990dfc94a9148d2eb7c3f7adfb44494f93153"

  url "https://github.com/steveseguin/social_stream/releases/download/v#{version}/socialstreamninja_mac_v#{version}_#{arch}.dmg"
  name "Social Stream"
  name "Social Stream Ninja"
  desc "Consolidate, control, and customise live social messaging streams"
  homepage "https://socialstream.ninja/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "socialstream.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/socialstream.electron.sfl*",
    "~/Library/Application Support/socialstream",
    "~/Library/Preferences/socialstream.electron.plist",
    "~/Library/Saved Application State/socialstream.electron.savedState",
  ]
end
