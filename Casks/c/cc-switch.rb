cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.24"
  sha256 arm:          "60160c8946424e803e55ad1165d873e4e1a9f34aa68e7bcc0112c8f6f366c550",
         intel:        "60160c8946424e803e55ad1165d873e4e1a9f34aa68e7bcc0112c8f6f366c550",
         arm64_linux:  "a93f21bf7efc8a6b0f7583deae6c0c7de55bcb5d081d6037e7105fa5f3ef2a57",
         x86_64_linux: "ef915ece18c12598485662516c5cb76fdd88dac728fedaf35a041e9a26abe440"

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
