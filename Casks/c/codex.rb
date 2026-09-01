cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.152.0"
  sha256 arm:          "5287a514213f8134210677cce51b23e2eaeaff1925362f18318e4268a5ab1d1b",
         intel:        "161d9da66a0f97a93294d006f8066e6d5fad71cc9fe00f7d4ae111daf692b308",
         arm64_linux:  "af9777a8d62edeea31adfecbaa2a5b296bc57a4a0c3ed69c02e39c23744f5feb",
         x86_64_linux: "352c24fbdc5aefaffde9c1df991b534b6bc72a06e49708794fc685fc3556c855"

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
