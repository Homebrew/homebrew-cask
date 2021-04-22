cask "spotter" do
  version "1.0.3"
  sha256 "7902e6ed5a1bb8c58fc56a44a13acd1b0d6747a4c97a561520b50d4d3441db71"

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
