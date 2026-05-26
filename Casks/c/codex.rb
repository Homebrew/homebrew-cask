cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.134.0"
  sha256 arm:          "78ad482ccaeb0eb8983b340f33a1f28c8ad315b6d5e3140c34c7e119c826bc12",
         intel:        "265f8f6d627ba9c6ed1cac7f36e5d19eff60ef345332924f95af2cb6a0c8bbb7",
         arm64_linux:  "8e066f998111eb8b44250ac11df004daa07fadf276c5942a7183cb8e421091a3",
         x86_64_linux: "e54b983c3ab5ca992da8edde83bb29a545761a72c4fa39f18a165d9e792e1c71"

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
