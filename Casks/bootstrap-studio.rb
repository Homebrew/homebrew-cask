cask "bootstrap-studio" do
  version "5.4.0"
  sha256 "a99922e4b1f9e63d85f98ff62e71526f31a9253522be56486a850892438e8d06"

  url "https://bootstrapstudio.io/releases/desktop/#{version}/Bootstrap%20Studio.dmg"
  appcast "https://bootstrapstudio.io/pages/releases"
  name "Bootstrap Studio"
  desc "Design and prototype websites using the Bootstrap framework"
  homepage "https://bootstrapstudio.io/"

  auto_updates true

  app "Bootstrap Studio.app"

  zap trash: [
    "~/Library/Application Support/bstudio",
    "~/Library/Application Support/CrashReporter/Bootstrap Studio*",
    "~/Library/Caches/bg.zine.bootstrapstudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/bg.zine.bootstrapstudio.sfl2",
    "~/Library/Caches/bg.zine.bootstrapstudio.ShipIt",
    "~/Library/Preferences/ByHost/bg.zine.bootstrapstudio.ShipIt.*",
    "~/Library/Preferences/bg.zine.bootstrapstudio.helper.plist",
    "~/Library/Preferences/bg.zine.bootstrapstudio.plist",
    "~/Library/Saved Application State/bg.zine.bootstrapstudio.savedState",
  ]
end
