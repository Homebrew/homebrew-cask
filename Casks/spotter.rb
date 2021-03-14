cask "spotter" do
  version "1.0.0"
  sha256 "cb957e9d53a68c1cdd615685bd4ad05583c349661aacf1e728903a2e4d7bdd87"

  url "https://github.com/spotter-application/spotter/releases/download/#{version}/spotter.dmg"
  appcast "https://github.com/spotter-application/spotter/releases.atom"
  name "Spotter"
  desc "Productivity tool to launch everything"
  homepage "https://github.com/spotter-application/spotter"

  depends_on macos: ">= :big_sur"

  app "spotter.app"

  zap trash: [
    "~/Library/Application Scripts/org.reactjs.native.spotter",
    "~/Library/Application Support/org.reactjs.native.spotter",
    "~/Library/Caches/org.reactjs.native.spotter",
    "~/Library/Containers/org.reactjs.native.spotter",
    "~/Library/Preferences/org.reactjs.native.spotter.plist",
  ]
end
