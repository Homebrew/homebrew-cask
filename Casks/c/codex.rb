cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.142.2"
  sha256 arm:          "264c15a63146176db0314c54728437c97b1121bb2617c426c06925d62b4454b3",
         intel:        "294e810e754a5c687b09e76bf386238c9ef9fcb5852354bec063e7fa7d40d5a5",
         arm64_linux:  "a889372f39fb3dec6e39f223339685a011d39bb5c49a81470d429b876dc86493",
         x86_64_linux: "12c9005c8778e9f7623b17b77f3cbf56e8059809ac68027b3560c1a8139aa4e2"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "codex-#{arch}-#{os}", target: "codex"

  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
