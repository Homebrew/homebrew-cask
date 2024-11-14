cask "dash" do
  version "7.3.2"
  sha256 "a4f5c52b82327fd1f3d492e19d3f4a778aa5327921698da9bbf6b522959dfc3b"

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
  depends_on macos: ">= :mojave"

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
