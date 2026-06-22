cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.141.0"
  sha256 arm:          "abdead5feebc259decaaec33465423bbb7904b3049fa28e92209cb924693c0f4",
         intel:        "7b7398b93dd16a3123c87286e312a7942be3c13f9619fc587dfc05563fcbc888",
         arm64_linux:  "8c9f31811d659fcc17c5f1a21bc0971984469c9e3a63c2b39b61cc7694f3a101",
         x86_64_linux: "f1e2bf9fa0ba6eb82119d621b6b71bc38edd33c06dc2867b31a027052358957d"

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
