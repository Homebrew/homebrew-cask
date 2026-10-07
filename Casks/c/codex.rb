cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.161.0"
  sha256 arm:          "f0feee8537daf8dd6b4e0a36e764549ad14afdbb419d8775aeab9feb20182313",
         intel:        "53f7c9081ab83684a3d4fb35dbc4b05d3ebb204beb2eab000626c15f0b15e738",
         arm64_linux:  "3c02e2ae34be0d06e62557e98fc5c0a783bec5a2fed406fe00e565803bf84ee8",
         x86_64_linux: "04d8ab9dbcb9df0edf3c67dca5072a374babfdf762a9bc4ae649ae140b8e2cf0"

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
