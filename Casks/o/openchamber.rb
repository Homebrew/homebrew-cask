cask "openchamber" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.5.3"
  sha256 arm:          "d41849339b3db9aa229016fb46d12428bf644e1c7631c16ae919f50b1d137ac4",
         intel:        "c6a3420aa11e4f3fae8b3aefdb21d58be20ddcbb47e2da6e678a6b1466e9fe81",
         arm64_linux:  "8ede74d067cc0c8fcdf16109271446cb55017acf745fa6b7b8b7ea6a9a4a1f9e",
         x86_64_linux: "c034a8adf52af5bc50f99dce994d70159741074d0c4266f456b70f59bc81de32"

  on_macos do
    depends_on macos: :ventura

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
