cask "spotter" do
  version "1.0.6"
  sha256 "adba95faa7e2226186d9dc55078969e5a29e5317cb1dbad642046cec1401c7af"

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
