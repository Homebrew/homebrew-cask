cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.11.22-e9042b2"
  sha256 arm:          "92f39e448218897538bd801cdb01d69106ab37a86aaf3dc0e6b55159c79b75e2",
         intel:        "16cc7314128243b24d74575cae5f7e1a215656d48115d55084e2d6725ef7c542",
         arm64_linux:  "7b7dd0020fb9a2a9e1e7e3f39e2f9f512d1dd9577174ecda8aa82ac31dbc9565",
         x86_64_linux: "7663b1c5d1b56e095ef8e23bef38d66df6cfd665c4873470214e0e411f0f97b3"

  url "https://downloads.cursor.com/lab/#{version}/#{os}/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
