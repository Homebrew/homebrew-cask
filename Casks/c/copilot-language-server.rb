cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.565.0"
  sha256 arm:          "39b5713e53784b040446acb189e48fef0cb538c2295e0b2ebccbfc2e2561e494",
         intel:        "cb3f003c695d0fa3092e26d1450853bae89dbd952ad254238d33f93d4a13b3e5",
         arm64_linux:  "e7042177c0057d2d45303e7c8e10cb615eb7315da08598822d2a2b66903f96f0",
         x86_64_linux: "8e5fa7548e63b945c55bb85eeb4dbd8807c5f80e97ddbb463072eacb0e64396d"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap :not_required
end
