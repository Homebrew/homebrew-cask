cask "spotter" do
  version "0.0.5"
  sha256 "4103a4acf57462688f8099e52e793ced507ae4dcaa096bc2052a999b4019712e"

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
