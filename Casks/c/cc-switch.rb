cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.21"
  sha256 arm:          "504a64f9c858927c08e6d86301f0ecc638e8650202d39945694fcd64d8d1973b",
         intel:        "504a64f9c858927c08e6d86301f0ecc638e8650202d39945694fcd64d8d1973b",
         arm64_linux:  "e551e709a2f4bb3ebeb9a0b0c3d4b318ca23551bf7d5516ee45ac1fd48a06c2c",
         x86_64_linux: "8a69d94e0b94beffcd41aa79253359ab865bcc57473235dc9a5c0cb952534457"

  on_macos do
    depends_on macos: :monterey

    app "CC Switch.app"

    zap trash: [
      "~/.cc-switch",
      "~/Library/Application Support/com.ccswitch.desktop",
      "~/Library/Caches/com.ccswitch.desktop",
      "~/Library/Preferences/com.ccswitch.desktop.plist",
      "~/Library/Saved Application State/com.ccswitch.desktop.savedState",
      "~/Library/WebKit/com.ccswitch.desktop",
    ]
  end
  on_linux do
    app_image "CC-Switch-v#{version}-Linux-#{arch}.AppImage", target: "CC Switch.AppImage"
  end

  url "https://github.com/farion1231/cc-switch/releases/download/v#{version}/CC-Switch-v#{version}-#{url_end}"
  name "CC Switch"
  desc "Configuration manager for AI coding agents"
  homepage "https://github.com/farion1231/cc-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
