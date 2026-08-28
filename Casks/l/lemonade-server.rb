cask "lemonade-server" do
  version "11.8.1"
  sha256 "404a8608e2eccc6aead9b3bc5119cdaf79b3cdffd20a258a5644310243c04746"

  url "https://github.com/lemonade-sdk/lemonade/releases/download/v#{version}/Lemonade-#{version}-Darwin.pkg",
      verified: "github.com/lemonade-sdk/lemonade/"
  name "Lemonade Server"
  desc "Local LLM server with GPU and NPU acceleration"
  homepage "https://lemonade-server.ai/"

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
