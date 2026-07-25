cask "socialstream" do
  arch arm: "arm64", intel: "x64"

  version "0.3.128"
  sha256 arm:   "f93e9bdc9286955fb9719e9e5faedf793f1ff4fd969bb0d4c68db50149622f1d",
         intel: "167f7f3815d3cf208ece1674c577a24c9270536f9a55f24619319b92b86e2975"

  url "https://github.com/steveseguin/social_stream/releases/download/v#{version}/socialstreamninja_mac_v#{version}_#{arch}.dmg",
      verified: "github.com/steveseguin/social_stream/"
  name "Social Stream"
  name "Social Stream Ninja"
  desc "Consolidate, control, and customise live social messaging streams"
  homepage "https://socialstream.ninja/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "socialstream.app"

  zap trash: [
    "~/Library/Application Support/socialstream",
    "~/Library/Preferences/socialstream.electron.plist",
    "~/Library/Saved Application State/socialstream.electron.savedState",
  ]
end
