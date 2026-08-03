cask "lemonade-server" do
  version "11.5.1"
  sha256 "103ccdbac67735a8c97177c6cc4af133e72dc48f1e927197042e9a3bb6a39635"

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
