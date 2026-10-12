cask "super-productivity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "19.2.0"
  sha256 arm:          "ed1e5cfb0487654198d688df2079f030495ced1f998d23e594d2d0b7b826f683",
         intel:        "8228e2841beb5bc58fd136e59aec09f6785f1b0d54db077f5aedbfab4d1d5a4c",
         x86_64_linux: "5154435a613369c32fda06a6116fceb70b706d2050aca102323525e6dfd62d26"

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
