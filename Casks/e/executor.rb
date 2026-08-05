cask "executor" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "mac-#{arch}.dmg", linux: "linux-x86_64.AppImage"

  version "1.5.39"

  on_macos do
    sha256 arm:   "0eb8b5e32c8c703b07ce1543587985e1b0156cacbd26992d4752afd137c8d681",
           intel: "d693c9d21e5e19b7eaf472cb2825a16bd10f4f3325c2d0ecec3f8fc6389e1897"

    depends_on macos: :monterey

    app "Executor.app"

    uninstall quit: "sh.executor.desktop"

    zap trash: [
      "~/.executor",
      "~/.local/share/executor",
      "~/Library/Application Support/@executor-js/desktop",
      "~/Library/Application Support/Executor",
      "~/Library/Caches/sh.executor.desktop",
      "~/Library/Caches/sh.executor.desktop.ShipIt",
      "~/Library/HTTPStorages/sh.executor.desktop",
      "~/Library/HTTPStorages/sh.executor.desktop.binarycookies",
      "~/Library/Logs/Executor",
      "~/Library/Preferences/sh.executor.desktop.plist",
      "~/Library/Saved Application State/sh.executor.desktop.savedState",
    ]
  end
  on_linux do
    sha256 "ca569e7dfabfe42fe733e5f5d01015edbf08fe59d8dfa8b589d04096c913f81c"

    depends_on arch: :x86_64

    app_image "executor-desktop-linux-x86_64.AppImage", target: "Executor.AppImage"
  end

  url "https://github.com/RhysSullivan/executor/releases/download/v#{version}/executor-desktop-#{url_end}",
      verified: "github.com/RhysSullivan/executor/"
  name "Executor"
  desc "Tool discovery and execution layer for AI agents"
  homepage "https://executor.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
