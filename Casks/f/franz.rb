cask "franz" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "6.10.0"
  sha256 arm:          "5a5553547823961b8694774923c3d17b643d01d61fd7e983a7d2af567dbf47b2",
         intel:        "7d432e436237184fd070585092ad2e7f223d1771945d26bbf11f09f1d416f9d2",
         arm64_linux:  "9126bcd48b651dfaad765f3329f85743528d5d8835fb970d9bf62333a63c7ec8",
         x86_64_linux: "548779b0dd63a4f098cbd0b38912c04c93694c48bc1c211e883049d2cfb2f65d"

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
