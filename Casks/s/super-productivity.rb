cask "super-productivity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "19.3.1"
  sha256 arm:          "ccbddcf82dabd677a0daa8d2fee73d7a004d01057e3eb585229de93842924707",
         intel:        "251c11e2bc1879da7b830a411593969b5a3250b9f976f9d90bd746d39dddb41a",
         x86_64_linux: "d8e04120818898aa519fb49f63c75940e81da126b8a918199ac690ac8edf950f"

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
