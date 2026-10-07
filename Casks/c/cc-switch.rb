cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.4"
  sha256 arm:          "1e4d02e19864336b7fdc7e47d791c0a66f652c9591d8bf3c59be48a4cc940fd3",
         intel:        "1e4d02e19864336b7fdc7e47d791c0a66f652c9591d8bf3c59be48a4cc940fd3",
         arm64_linux:  "26b0b62a7c174973365e995faaf2a454e679ddb0508475597a88f6ff2a9c83e4",
         x86_64_linux: "3b5384495f1eea322747a33c64a045442b5d301ebcc43488beb12124ca1fe77f"

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
