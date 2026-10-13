cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.11"
  sha256 arm:          "9b8d2af5be557604f09e1f4d3b11147ca9e7367c6837e4e1d7e591b01a95d00d",
         intel:        "9b8d2af5be557604f09e1f4d3b11147ca9e7367c6837e4e1d7e591b01a95d00d",
         arm64_linux:  "5dba301652a7d5fc377636f96c77137f78ac70456dc4aceda30207df1b279b71",
         x86_64_linux: "e0e453bacbc2e3cad4ed37978ecf3345423cbbe87d212fa1c594b3b853cb60e9"

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
