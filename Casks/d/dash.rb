cask "dash" do
  version "7.3.5"
  sha256 "881d3210ff71cc0ba03fabdf04d84defeb77d7edc688045d29312e59c82f649d"

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name "Dash"
  desc "API documentation browser and code snippet manager"
  homepage "https://kapeli.com/dash"

  livecheck do
    url "https://kapeli.com/Dash#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "dash@6"
  depends_on macos: ">= :high_sierra"

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/com.kapeli.dashdoc",
    "~/Library/Application Support/Dash",
    "~/Library/Caches/com.kapeli.dashdoc",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.kapeli.dashdoc",
    "~/Library/Cookies/com.kapeli.dashdoc.binarycookies",
    "~/Library/HTTPStorages/com.kapeli.dashdoc",
    "~/Library/HTTPStorages/com.kapeli.dashdoc.binarycookies",
    "~/Library/Logs/Dash",
    "~/Library/Preferences/com.kapeli.dashdoc.plist",
    "~/Library/Saved Application State/com.kapeli.dashdoc.savedState",
    "~/Library/WebKit/com.kapeli.dashdoc",
  ]
end
