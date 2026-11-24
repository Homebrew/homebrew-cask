cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.8.56"
  sha256 arm:   "c48e1bc55ca60e828730a55afcd6fc4368257e802f585d11eabc1dfccb287b0a",
         intel: "6b4a628a5ce65a6446b535588cd1a04fa39022bafcad6d59fc6e9bda75d1fcf7"

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
