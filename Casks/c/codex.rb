cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.130.0"
  sha256 arm:          "bc50a4b7f9a0c8ca99179189e4659b601107830770e21547dc0c246bce733577",
         intel:        "feddb116bd96d7d83f8bb19b34fbabe6843cc64461baf2e49c017e1206ad5e67",
         arm64_linux:  "1d7e00f2c22c3016b5bcb71c61010947b022a90e2901bc6baafe82256492c767",
         x86_64_linux: "16779e7b7857508a768a36d7d4e084eec336ec23946ed70a9b09489b8f861190"

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
