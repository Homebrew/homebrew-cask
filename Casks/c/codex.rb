cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.153.1"
  sha256 arm:          "0e1c64a0dc48440df30d158f3e4952e95ccf98a98969e7ea0c3dfd63902c5f2d",
         intel:        "838c298044da503bc0ce7921fdf4bdb25869b44a4cbe7edb7cc8a1dab4fd092d",
         arm64_linux:  "08ea8232c5556a8096f8bea1dc38b3166d32a9999465e32cc0183c960c4fae28",
         x86_64_linux: "0b7afd1de4ecf06a8633f1e4958ec5f8d57d4b7842773416d9cb9d8c816f2c84"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  binary "bin/codex"
  generate_completions_from_executable "bin/codex", "completion"

  zap rmdir: "~/.codex"
end
