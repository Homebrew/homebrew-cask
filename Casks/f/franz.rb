cask "franz" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "6.9.2"
  sha256 arm:          "e52cf11696f5dd592ca0200550c18125a2f07002123567b92110f750dc87bb44",
         intel:        "16d3db6b6fd7ef666e11a27b2bbd7e060044bd420b7ed1b3fab3e02d8c60de49",
         arm64_linux:  "83c9ea940facdb2b1a31c2da75a7a62f31afe1c2bb301a149662b30e54d8cd77",
         x86_64_linux: "e0011e3982c5c29e2c56e1bbf2ced41739889e7a496987bd3159a6019c28f647"

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
