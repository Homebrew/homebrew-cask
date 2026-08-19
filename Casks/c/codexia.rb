cask "codexia" do
  arch arm: "aarch64", intel: "x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "amd64.AppImage"

  version "0.47.1"

  on_macos do
    sha256 arm:   "983220783a505395266b7e791607aba886038e6e6c40a62c2d2de08553dd49d1",
           intel: "d6e5c69e442c7d3967f70f7228d8d1fa6389321c8cc83f9eb50b71bfa8c7b584"

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
    sha256 "ef96c975fff69fc00e309fec0e2f2af6d66c399ac95d0cb492e941c3ae4f4716"

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
