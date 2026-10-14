cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.12"
  sha256 arm:          "0e056e138c252ded7ae23fb5ea2cb772c06cd07c77c44fb746c40cda74a9b309",
         intel:        "0e056e138c252ded7ae23fb5ea2cb772c06cd07c77c44fb746c40cda74a9b309",
         arm64_linux:  "80b5f74296b8f0ff0cff09feb0b6a0bddbb61e8452f9c2d44e791dc038c39f8c",
         x86_64_linux: "df9481420a90d26f05c7b0ce9a8acba46e1fac4e38fbd9facaacede289b06d08"

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
