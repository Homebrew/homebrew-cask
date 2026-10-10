cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.8"
  sha256 arm:          "9ed55d34341318b3cb51a30026e90b45d5eb5e27943439ccbc65c091b761cd7e",
         intel:        "9ed55d34341318b3cb51a30026e90b45d5eb5e27943439ccbc65c091b761cd7e",
         arm64_linux:  "b8956ff123f6fbdd8f885bcbfc0049249e47dfe71c9a50c0cf8ef082795867ee",
         x86_64_linux: "2ac88a768849dc157b9d00dd4fe5ea3495b053f81ee2aa3826c890ac372324c7"

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
