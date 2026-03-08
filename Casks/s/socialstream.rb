cask "socialstream" do
  arch arm: "arm64", intel: "x64"

  version "0.3.98"
  sha256 arm:   "1650a6bcbb27e31a481492e4b1651264c75534ae3a007fd91255794c846d685c",
         intel: "4c35e94686022d3cec88426726be174772335333caa9e75323218cd5a9e070a0"

  url "https://github.com/steveseguin/social_stream/releases/download/#{version}/socialstreamninja_mac_v#{version}_#{arch}.dmg",
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
