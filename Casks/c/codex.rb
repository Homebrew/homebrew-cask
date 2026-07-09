cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.144.0"
  sha256 arm:          "4584a243ff8a671250bc716f89c5a50ed59917a98390acfdffa3ecb6cfe5bb34",
         intel:        "1056c80958863b13debd5daee5eb7b9bd6f86236a1171d21b009e2dceea8763e",
         arm64_linux:  "d58be04e6ee804833c25b586869f1fa67f27f0bdc3f39105a2a9bacef167ae42",
         x86_64_linux: "6b03d2d89910874fa5be27b617621d7638f906e891fd8cb40af3d2876a8a36fd"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "bin/codex"
  binary "bin/codex-code-mode-host"

  generate_completions_from_executable "bin/codex", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
