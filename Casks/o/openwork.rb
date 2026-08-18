cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.30"
  sha256 arm:          "79187cf1b9c76aaeb3e1d8845ddeddf23c2d1e5f5fa1aaf8110540bb148baa15",
         intel:        "f92fbdb79ee168a23fffed7a6f5fb9d8fc76b44637cb0a7664e94e65ccf6035b",
         arm64_linux:  "abc0935310820876791887d8c56fcf4f39812b56fa25214330eceb8cc9bf0171",
         x86_64_linux: "42a63d9c1348fee372fef34842ceb00755a727071c09fb18da375e6c96b0f709"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "OpenWork.app"

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.differentai.openwork.sfl*",
      "~/Library/Application Support/com.differentai.openwork",
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
      "~/Library/Preferences/com.differentai.openwork.ShipIt.plist",
    ]
  end
  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}.#{url_end}"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
