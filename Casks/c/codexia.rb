cask "codexia" do
  arch arm: "aarch64", intel: "x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "amd64.AppImage"

  version "0.51.0"
  sha256 arm:          "a6f85b01a38ff7a1e97a34de192f2e229df8fe946a121de4d4e10e48ad4650d7",
         intel:        "858a74b142ae690638a0bdfafe35f4294202026333251f3d8ee0af8ec52f1f0e",
         x86_64_linux: "13728d4b50719294e0ee6c43413c43066aafd25ad68b16a4cfba5675c6ddd97d"

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
