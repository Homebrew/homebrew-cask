cask "tabularis" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.33.0"
  sha256 arm:          "e541e548c98859ddf2f26c180ceedcfba6d3b4c3d3b6f0c25781e7312f85cd43",
         intel:        "ea1a89c47841f1bbe37a1f885df19c7263bb0080603ed5d16cfb48472abcadc8",
         x86_64_linux: "b458a4cb07f97e93f77e36fff77d1fb920ead21a213fc628f87e0c1566521c72"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "tabularis.app"

    zap trash: [
      "~/Library/Application Support/tabularis",
      "~/Library/Caches/tabularis",
      "~/Library/Logs/tabularis",
      "~/Library/Preferences/com.debba.tabularis.plist",
      "~/Library/Saved Application State/com.debba.tabularis.savedState",
      "~/Library/WebKit/tabularis",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "tabularis_#{version}_amd64.AppImage", target: "tabularis.AppImage"

    zap trash: [
      "~/.config/tabularis",
      "~/.local/share/applications/tabularis-handler.desktop",
      "~/.local/share/tabularis",
    ]
  end

  url "https://github.com/TabularisDB/tabularis/releases/download/v#{version}/tabularis_#{version}_#{arch}.#{os}"
  name "Tabularis"
  desc "Lightweight database management tool"
  homepage "https://tabularis.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "tabularis@nightly"
end
