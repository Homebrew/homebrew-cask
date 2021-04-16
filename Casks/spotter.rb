cask "spotter" do
  version "1.0.2"
  sha256 "2658fb7343961d6f54c9aa7855c12a3e9aee2b109a1794572632a3e94964d10a"

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
