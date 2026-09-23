cask "lemonade-server" do
  version "2026.39.1"
  sha256 "c2c66072237e96f1fb0f402842f4ce597aaeb40aaed10a6e117de116d3a2a0e2"

  url "https://github.com/lemonade-sdk/lemonade/releases/download/v#{version}/Lemonade-#{version}-Darwin.pkg"
  name "Lemonade Server"
  desc "Local LLM server with GPU and NPU acceleration"
  homepage "https://lemonade-server.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  pkg "Lemonade-#{version}-Darwin.pkg"

  uninstall launchctl: [
              "ai.lemonadeserver.server",
              "ai.lemonadeserver.tray",
              "com.lemonade.server",
              "com.lemonade.tray",
            ],
            pkgutil:   ["ai.lemonadeserver.server.*", "com.lemonade.server.*"]

  zap delete: [
        "/Library/Application Support/Lemonade",
        "/Users/Shared/lemonade-tray.err.log",
        "/Users/Shared/lemonade-tray.out.log",
        "/usr/local/etc/lemonade",
        "/var/log/lemonade",
      ],
      trash:  "~/.cache/lemonade",
      rmdir:  "/usr/local/share/lemonade-server"
end
