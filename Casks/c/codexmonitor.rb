cask "codexmonitor" do
  arch arm: "aarch64", intel: "amd64"

  version "0.7.66"

  on_macos do
    sha256 "e24ba50bb4e301693ec16705419bbca9f77b9c60ec3c0f8bf830b29d1494bc1f"

    url "https://github.com/Dimillian/CodexMonitor/releases/download/v#{version}/CodexMonitor.app.tar.gz"

    depends_on arch: :arm64

    app "Codex Monitor.app"

    zap trash: [
      "~/Library/Application Support/com.dimillian.codexmonitor",
      "~/Library/Caches/com.dimillian.codexmonitor*",
      "~/Library/Preferences/com.dimillian.codexmonitor.plist",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "4b9ba31155ab01560d95788d7062204c533e324110378073ecb84e246662f557",
           x86_64_linux: "340902d138815109c3ac2f1b443a20de56404643fe3429f4648675f07c482eeb"

    url "https://github.com/Dimillian/CodexMonitor/releases/download/v#{version}/Codex.Monitor_#{version}_#{arch}.AppImage"

    app_image "Codex.Monitor_#{version}_#{arch}.AppImage", target: "Codex Monitor.AppImage"
  end

  name "CodexMonitor"
  desc "Monitor Codex activity"
  homepage "https://www.codexmonitor.app/"

  # The upstream release cadence varies but can sometimes involve several per
  # day, so this minimal throttle rate is intended to dampen bursts of releases.
  livecheck do
    url :url
    throttle 2
  end

  auto_updates true
end
