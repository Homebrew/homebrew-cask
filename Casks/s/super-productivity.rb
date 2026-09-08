cask "super-productivity" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "18.21.2"
  sha256 arm:          "c9a256f91be180391ee25b05ca0c429871b9674184b593cba685b2c11de18b12",
         intel:        "b94c8e289a9b03bd2ef6f69eeee171be7ac592f23f1394c346e41834c2811459",
         x86_64_linux: "cbbc5904b3a25be2cb189312a16ba9f96c5b710834a97dc69c71e44c310a9825"

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
