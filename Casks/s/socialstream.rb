cask "socialstream" do
  arch arm: "arm64", intel: "x64"

  version "0.4.18"
  sha256 arm:   "6f45d36dff6ae4ace9e2b3b51ba326d17a4c32f2cc502bf1e4938b5e31629395",
         intel: "d978fdb1475dfef0a73434d43880c1548e6f7715248c89efc9271722b10db83a"

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
