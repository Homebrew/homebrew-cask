cask "spotter" do
  version "1.0.4"
  sha256 "4d9fea5f9a4e1e2fb1445c51639e79080ce15f24373b4ab1cce65b0d3c4ccc13"

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
