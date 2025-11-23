cask "socialstream" do
  version "0.3.58"
  sha256 "90d4d1b2715aadcfe29f2e10e747dd7266ab00a6ae5cbda23507ea60ba048944"

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
