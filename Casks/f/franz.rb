cask "franz" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "6.9.0"
  sha256 arm:          "4b03ff697b8d889f126a166b9815f610f157d63639a857a9ecccc2a3147861ae",
         intel:        "a7b9e1a3c3cb15f0d10981c32fb9488fbda8668fb5eb862d4f0025155e2f45d9",
         arm64_linux:  "a3ee6dbcc0f1d4a9c124b29c73e5bb83d1f54dfc1519fdc3824391263c8381bb",
         x86_64_linux: "69eb019043fba696a735e5cdeda4d25ffca649a3a1cbf0b13a0beb9f82c1dc81"

  on_macos do
    depends_on macos: :monterey

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
