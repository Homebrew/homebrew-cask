cask "super-productivity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "19.1.0"
  sha256 arm:          "f44bead7fd23e8bbd5ceb23d4f97037af001894f7b009e67d510be32e1636f5b",
         intel:        "f49db3337605578e2f09981772df06a5fb185e4c16f93f3f0411e66b8b12873b",
         x86_64_linux: "6d3425cd94c40f9ac8a8a4288d134d85644b3e3bb40d84a955a77b11a30c75af"

  on_macos do
    depends_on macos: :monterey

    app "Super Productivity.app"

    zap trash: [
      "~/Library/Application Support/superProductivity",
      "~/Library/Logs/superProductivity",
      "~/Library/Preferences/com.super-productivity.app.plist",
      "~/Library/Saved Application State/com.super-productivity.app.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "superProductivity-#{arch}.AppImage", target: "Super Productivity.AppImage"

    zap trash: "~/.config/superProductivity"
  end

  url "https://github.com/super-productivity/super-productivity/releases/download/v#{version}/superProductivity-#{arch}.#{url_end}"
  name "Super Productivity"
  desc "To-do list and time tracker"
  homepage "https://super-productivity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
