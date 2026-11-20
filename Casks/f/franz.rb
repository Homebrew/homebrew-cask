cask "franz" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "6.11.3"
  sha256 arm:          "3458d4a6c6991a24702a4b1ea47d2b44a888bf2a5800c5bae8957b322e2bb36a",
         intel:        "a13ca1d0967e8eaadefed84c443b43cd105af87e61581d5d8eefc81436d44630",
         arm64_linux:  "32f8fb554d9a606708566beb4fb63c44551f1b8e23515e51605935521f8f0b8b",
         x86_64_linux: "922fee39c7b7018c933712ea50ab074dcc1c67d66d434753575cd531ad7f3f0e"

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
