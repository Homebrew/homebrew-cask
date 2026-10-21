cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.17"
  sha256 arm:          "f8121aa40d328ac45d53d6fd347fddf8714d15880f8938f2a2c6c657c29b8172",
         intel:        "f8121aa40d328ac45d53d6fd347fddf8714d15880f8938f2a2c6c657c29b8172",
         arm64_linux:  "85d40322a9fcd4e3da28f25c3ffa7aab5bd9d0688f1cffeb74295f08e7581b0e",
         x86_64_linux: "c34ba0e33dc1d3d51637aaa76ce4d02402b47706f51f78810d65c43518e6c482"

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
