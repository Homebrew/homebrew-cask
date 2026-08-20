cask "codexia" do
  arch arm: "aarch64", intel: "x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "amd64.AppImage"

  version "0.48.1"

  on_macos do
    sha256 arm:   "9aa41c41e4eaca2bbfdcf62ba7899e701b30703718a4f322d043362a8e7e14c0",
           intel: "022f9c186b2c5cd8c20e27eacbb72d86d5ef1f6c3f9e4e05e46f7755beaf345a"

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
    sha256 "bf6c9c9c5897922bf20127af1785087dc68c64b51000088a6dc6fb6e9ffa4d48"

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
