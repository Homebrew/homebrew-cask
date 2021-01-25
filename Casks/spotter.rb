cask "spotter" do
  version "0.0.4"
  sha256 "71d6894c728b7c8d5e3fd634727dba77908417598a6888f3e8510c70ce1de751"

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
