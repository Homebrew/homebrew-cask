cask "spotter" do
  version "1.0.1"
  sha256 "38b6d57a11b49f04193bb7d095bbbb0e5c4ce61a56a561404b3dfa06d8d251e9"

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
