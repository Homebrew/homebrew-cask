cask "socialstream" do
  version "0.3.56"
  sha256 "8a9b86a9229401a6d9656afc9b6bc48fcb9c5b4bbc8b7e6bc664c25d5465c079"

  url "https://github.com/steveseguin/social_stream/releases/download/#{version}/socialstreamninja_mac_v#{version}.dmg",
      verified: "github.com/steveseguin/social_stream/"
  name "Social Stream"
  name "Social Stream Ninja"
  desc "Consolidate, control, and customise live social messaging streams"
  homepage "https://socialstream.ninja/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "socialstream.app"

  zap trash: [
    "~/Library/Application Support/socialstream",
    "~/Library/Preferences/socialstream.electron.plist",
    "~/Library/Saved Application State/socialstream.electron.savedState",
  ]
end
