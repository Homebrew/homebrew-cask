cask "franz" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "6.10.3"
  sha256 arm:          "1d54c1e11ce9f96ed4fb83da6882eb9f9f22472ed23e7f950b61b051917f0d3c",
         intel:        "5a1be46b07137a01edb5249cbfdbe5ad7100c231509e9c1f2a32ebfdced269df",
         arm64_linux:  "899c5ca497d03594be47d9ffb429ee1a438ea204b59b7ef4c6ff71e94eda4bc1",
         x86_64_linux: "b49e031f35a7389644fcab62b0319276499eb30b5313b3617424b8fa6f5a1d61"

  on_macos do
    depends_on macos: :ventura

    app "Franz.app"

    uninstall signal: ["QUIT", "com.meetfranz.franz"],
              delete: "/Library/Logs/DiagnosticReports/Franz Helper_.*wakeups_resource.diag"

    zap trash: [
      "~/Library/Application Support/Caches/franz-updater",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.meetfranz.franz.sfl*",
      "~/Library/Application Support/Franz",
      "~/Library/Caches/com.meetfranz.franz",
      "~/Library/Caches/com.meetfranz.franz.ShipIt",
      "~/Library/Logs/Franz",
      "~/Library/Preferences/ByHost/com.meetfranz.franz.ShipIt.*.plist",
      "~/Library/Preferences/com.electron.franz.helper.plist",
      "~/Library/Preferences/com.electron.franz.plist",
      "~/Library/Preferences/com.meetfranz.franz.plist",
      "~/Library/Saved Application State/com.electron.franz.savedState",
    ]
  end
  on_linux do
    app_image "Franz-#{arch}.AppImage", target: "Franz.AppImage"

    zap trash: "~/.config/Franz"
  end

  url "https://github.com/meetfranz/franz-6/releases/download/v#{version}/Franz-#{arch}.#{os}"
  name "Franz"
  desc "Messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and more"
  homepage "https://meetfranz.com/"

  auto_updates true
end
