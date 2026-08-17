cask "codexia" do
  arch arm: "aarch64", intel: "x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "amd64.AppImage"

  version "0.46.0"

  on_macos do
    sha256 arm:   "49802727b0d04d429f727980be062c30d7aa6d6c99e970e19c9e8bcb7a3a2b5c",
           intel: "214a002c41480c67a47215107210fe438eca37a88b617d3442c378da7bf2c3d6"

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
    sha256 "34e85c6c1620de70ff839b8d9bbaf204b72164d8f9f2bd11224629c5621ae7b4"

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
