cask "super-productivity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "20.1.0"
  sha256 arm:          "fdfb1625603537f0935209b609ba18fba587057ab01139dfe7098968c9a9748c",
         intel:        "12d97a4b9d283789ce5dc4a268d88737a7d41b973ffd557b9a5954f86ec22fb6",
         x86_64_linux: "bdb372be0ac0fe4b8822d6e4803473ab67677ace18674ae6c2e1e9223eecc3cb"

  on_macos do
    depends_on macos: :ventura

    app "Super Productivity.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.super-productivity.app.sfl*",
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
