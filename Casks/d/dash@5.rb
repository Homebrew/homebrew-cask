cask "dash@5" do
  version "5.5.2"
  sha256 "cd98b4496bfa82ff2cd4c98f7d8a35eb83b909b7da605eb291d12a0c162c24a8"

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name "Dash"
  desc "API documentation browser and code snippet manager"
  homepage "https://kapeli.com/dash"

  livecheck do
    url "https://kapeli.com/Dash5.xml"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  conflicts_with cask: "dash"
  depends_on macos: ">= :mojave"

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/com.kapeli.dashdoc",
    "~/Library/Application Support/Dash",
    "~/Library/Caches/com.kapeli.dashdoc",
    "~/Library/Cookies/com.kapeli.dashdoc.binarycookies",
    "~/Library/HTTPStorages/com.kapeli.dashdoc.binarycookies",
    "~/Library/Logs/Dash",
    "~/Library/Preferences/com.kapeli.dashdoc.plist",
    "~/Library/Saved Application State/com.kapeli.dashdoc.savedState",
    "~/Library/WebKit/com.kapeli.dashdoc",
  ]

  caveats do
    requires_rosetta
  end
end
