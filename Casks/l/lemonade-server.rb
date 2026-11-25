cask "lemonade-server" do
  version "2026.48.3"
  sha256 "1ec6e6f32561ce3427dbfbae1cb0abf5bd5633acbeedfa4639dc6f4b5687b54c"

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
