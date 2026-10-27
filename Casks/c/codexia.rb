cask "codexia" do
  arch arm: "aarch64", intel: "x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "amd64.AppImage"

  version "0.59.0"
  sha256 arm:          "27b5ff20da50c7e1f5542493af8f0929bfeaea2d8c263849a364027faaf91f44",
         intel:        "9d0da83cc67a63aa9c2fbff2bc53870e7449fdf89a92146b5c481b95a279e50e",
         x86_64_linux: "a5b22334f11e29d5ce3b25cea7b7ebf791267bb39af03e3d94bfec4336741266"

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

  disable! date: "2026-10-27", because: :no_longer_available
end
