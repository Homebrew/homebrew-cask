cask "lemonade-server" do
  version "11.6.0"
  sha256 "229b27a7a468af5ba061675f399bed3c6d5f01c9abee6078d4ad4be0b9f9d01e"

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
