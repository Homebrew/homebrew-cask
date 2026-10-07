cask "lemonade-server" do
  version "2026.41.1"
  sha256 "0dc8905cc27ff818b032d98299ac588d9aba4a0c289874fe30cefc1a4e5cacab"

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
