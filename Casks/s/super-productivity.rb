cask "super-productivity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "20.0.0"
  sha256 arm:          "63cd4b4dcb18420b21c61e0f68d1d792653511bccb1de26b5043844ba20be1c0",
         intel:        "8df6e960e2fa12bc041d6df89831dcde859fe2382b4451827af89c6563515db7",
         x86_64_linux: "dfc921c7c709c0a608e9b0674e5a642dd7f62f80b5316f0b179d0653b4eab21b"

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
