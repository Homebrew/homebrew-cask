cask "super-productivity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "19.0.1"
  sha256 arm:          "4b403bc6063b69686efa9e971acf59439aef62fb1a1b857784c53c11ffeb9a7d",
         intel:        "7e55edf2d4ae745b73ae89ba8a96287281c2cf4371d137192cf525d255ab08f0",
         x86_64_linux: "fade7513b9d78f73714314053081d2e43118e38c482ebc80a1b57b9a7dde86f1"

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
