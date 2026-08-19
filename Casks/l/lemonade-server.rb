cask "lemonade-server" do
  version "11.7.0"
  sha256 "7f16717b8459195228a4c74cc56f82f865eab76130bd2216215ba86ae7d56d1f"

  url "https://github.com/lemonade-sdk/lemonade/releases/download/v#{version}/Lemonade-#{version}-Darwin.pkg",
      verified: "github.com/lemonade-sdk/lemonade/"
  name "Lemonade Server"
  desc "Local LLM server with GPU and NPU acceleration"
  homepage "https://lemonade-server.ai/"

  depends_on arch: :arm64
  depends_on :macos

  pkg "Lemonade-#{version}-Darwin.pkg"

  uninstall launchctl: [
              "com.lemonade.server",
              "com.lemonade.tray",
            ],
            pkgutil:   "com.lemonade.server.*"

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
