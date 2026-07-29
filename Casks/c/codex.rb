cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.146.0"
  sha256 arm:          "2750132d300e64f1dbffb95e3d913fd9c9dc7812bc8e1bce5c61357248b7929e",
         intel:        "710d727b0fa2b4ab2189eb1bdc5ab40177c168296af264913eb7ab3ce848d04b",
         arm64_linux:  "975bac91562abeedeb8f79636d51a86649b31f34a9de6a3bcb059565b6cf1f87",
         x86_64_linux: "5ba3b9405543953081f661d0854d266f76e2abbe51d41349355a36de7673776a"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "codex-#{arch}-#{os}", target: "codex"
  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
