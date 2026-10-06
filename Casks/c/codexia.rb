cask "codexia" do
  arch arm: "aarch64", intel: "x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "amd64.AppImage"

  version "0.54.2"
  sha256 arm:          "17f80b4b6ebc8c7fc0b2d34fa38d5fb28e324c90a82374a163c81e9cdad21abb",
         intel:        "7e27adc96a76820a9c8764bf866c3120243bc646ff9b9f463ed5f8eebcf3b775",
         x86_64_linux: "127199f1525a15292f3b59331fc285690e831c1aa78c947bab90d5a03b710a72"

  on_macos do
    app "codexia.app"

    zap trash: [
      "~/.codexia",
      "~/Library/Application Support/dev.milisp.codexia",
      "~/Library/Caches/dev.milisp.codexia",
      "~/Library/Logs/dev.milisp.codexia",
      "~/Library/Preferences/dev.milisp.codexia.plist",
      "~/Library/WebKit/dev.milisp.codexia",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "codexia_#{version}_amd64.AppImage", target: "Codexia.AppImage"
  end

  url "https://github.com/milisp/codexia/releases/download/v#{version}/codexia_#{version}_#{url_end}"
  name "Codexia"
  desc "GUI and toolkit for Codex CLI and Claude Code"
  homepage "https://github.com/milisp/codexia"

  livecheck do
    url :url
    strategy :github_latest
  end
end
