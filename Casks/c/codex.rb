cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.136.0"
  sha256 arm:          "5fe1f6efdcdca11f2c64a52517da24e2aabb972fd43d56d36b106ec75b4d7d3b",
         intel:        "e2f8eb8c7b076de22482d25e99c07304b35a5ed2e4bf2e91e0257d5b4271c852",
         arm64_linux:  "9dba0b8054541854b3cc3c12c25f52d6a441c90d87520e5260df56c09ba3eace",
         x86_64_linux: "dadad6c9db74500ad5431fa178b30288fdbdda6bdf3397634db6e1f5981321cf"

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
