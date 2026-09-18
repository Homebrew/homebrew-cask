cask "openchamber" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.24.1"
  sha256 arm:          "cf1353d4e59b1317f9bba8035b4087edf6d93ad9c95b1a8d41095a4c2fe87dc9",
         intel:        "2bad648aa97e28bc61b26ca31536bfef8836f78baf86f762b29dbc5c75010e9a",
         arm64_linux:  "7a32ddfce11bde3a691822a55d3c161f4a7c3b6b3197a46e91489cf5dfe7e47a",
         x86_64_linux: "fbc52a95ae33c33f210ed73494733cd6418ab14177ea592c34b62a45de285824"

  on_macos do
    depends_on macos: :monterey

    app "OpenChamber.app"

    zap trash: [
      "~/.config/openchamber",
      "~/Library/Application Support/ai.opencode.openchamber",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.openchamber.desktop.sfl*",
      "~/Library/Application Support/OpenChamber",
      "~/Library/Caches/ai.opencode.openchamber",
      "~/Library/Logs/OpenChamber",
      "~/Library/Preferences/ai.opencode.openchamber.plist",
      "~/Library/Preferences/dev.openchamber.desktop.plist",
      "~/Library/Saved Application State/ai.opencode.openchamber.savedState",
      "~/Library/WebKit/ai.opencode.openchamber",
    ]
  end
  on_linux do
    app_image "OpenChamber-#{version}-#{os}-#{arch}.AppImage", target: "OpenChamber.AppImage"

    zap trash: [
      "~/.config/OpenChamber",
      "~/.config/openchamber",
    ]
  end

  url "https://github.com/openchamber/openchamber/releases/download/v#{version}/OpenChamber-#{version}-#{os}-#{arch}.#{url_end}"
  name "OpenChamber"
  desc "Desktop and web interface for OpenCode AI agent"
  homepage "https://openchamber.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
