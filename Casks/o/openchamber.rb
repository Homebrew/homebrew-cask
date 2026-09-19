cask "openchamber" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.24.2"
  sha256 arm:          "66c3ff59ab6dc289c7f7a24e7bd902bc73d0387030d0395fd9e55bc1beb73f98",
         intel:        "afed05b0db3019cfaa3b5b7d4ee5e249e758b95572f7b0786cfb6e7df4b517ae",
         arm64_linux:  "cb7b2bc2cfd3e0185aa5ffffa3d8830cccf786ad9f4439d50bc2d3d73e6cd717",
         x86_64_linux: "e05fc5a0fc6f8fd4c7eb205fad445a15e63a0e805697e1e5b1533823da1e2cf3"

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
