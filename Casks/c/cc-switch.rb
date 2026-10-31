cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.23"
  sha256 arm:          "aaf51c128abfcbf07b0277372b0eae6fe76c3dad81e2948fa3d2d449d00be148",
         intel:        "aaf51c128abfcbf07b0277372b0eae6fe76c3dad81e2948fa3d2d449d00be148",
         arm64_linux:  "378e34ccf0e89362323eaeeac5699ea47a09b08569b825cd607e0563d2614812",
         x86_64_linux: "4e03f8d46e082f1fee75b17f8e7ad49642f28e94ef3a2c52a52f2b6931bd60c6"

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
