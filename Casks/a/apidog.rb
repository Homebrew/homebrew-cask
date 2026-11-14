cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.8.55"
  sha256 arm:   "864c23e027a802cf913630ac9a26285b66c6a6c3a91457b2cd05762b508f21db",
         intel: "d11743c2b23a27143f4573a6aead14a8c11e8c08daca3b75f2ca40734e954b23"

  url "https://file-assets.apidog.com/download/#{version}/legacy-Apidog#{arch}-#{version}.dmg"
  name "Apidog"
  desc "API development platform"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.apidog.com/api/v1/configs/client-updates/latest/mac#{livecheck_folder}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Apidog.app"

  zap trash: [
    "~/Library/Application Support/apidog",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apidog.app.sfl*",
    "~/Library/Application Support/CrashReporter/Apidog Helper_*.plist",
    "~/Library/Logs/DiagnosticReports/Apidog Helper-*.ips",
    "~/Library/Preferences/com.apidog.app.plist",
    "~/Library/Saved Application State/com.apidog.app.savedState",
  ]
end
