cask "spotter" do
  version "1.0.7"
  sha256 "7c435738deb9317de300139f41f04916f76a6d67fbef3f6b21fce3c6ccb49d74"

  url "https://github.com/spotter-application/spotter/releases/download/#{version}/spotter.dmg"
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
