cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.144.0"
  sha256 arm:          "10e062320b2462425178976ca138d55c6082173899de4723085ddc6066b49284",
         intel:        "bd9748c1cf7a755fdd7b73a90ca944640f7b01113872181db8a5e278902d2331",
         arm64_linux:  "c7c44a7950bdb555c743f5bb5f7ac3ec2ee7c311970effe92fd39e82eccc6b51",
         x86_64_linux: "725883fc20ab4af3072829aaa0edf6d12c216238f9f7315a6656b950fb05c8bb"

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
