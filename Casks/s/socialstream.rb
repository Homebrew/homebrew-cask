cask "socialstream" do
  version "0.3.62"
  sha256 "770206134f3949f5d024ddae6f0813c8721ceb79f3146059fd0447306ca7c193"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "socialstream.app"

  zap trash: [
    "~/Library/Application Support/socialstream",
    "~/Library/Preferences/socialstream.electron.plist",
    "~/Library/Saved Application State/socialstream.electron.savedState",
  ]
end
