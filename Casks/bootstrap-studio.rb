cask "bootstrap-studio" do
  version "5.2.1"
  sha256 "a4ca7e54bb7a2b5179694e95ab58cde285eda4574b5c1dc57c436530a42362c4"

  url "https://bootstrapstudio.io/releases/desktop/#{version}/Bootstrap%20Studio.dmg"
  appcast "https://bootstrapstudio.io/pages/releases"
  name "Bootstrap Studio"
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
