cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.555.0"
  sha256 arm:          "abf7139df2164da18e55e0cd14f7ba827be860c8985ca3926b7aab065fc5aa06",
         intel:        "8794d03d5c9362916a8275966186ce702263399269ca03ba9770102abaa0ec59",
         arm64_linux:  "3bac5bd8866f0a87efc91093b7bf84bff4cdcf1993238887415da71f566999e7",
         x86_64_linux: "8ef421180bb488ba2a5ac91322fdb59ab912c0150b82891378f1e258005785c7"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  # No zap stanza required
end
