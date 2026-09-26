cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.157.1"
  sha256 arm:          "6cda538d19c2f4d9dce965369aa22011afa9dce8c7a73c234b66eb3611ea4aab",
         intel:        "d2285a56c7d1f74923e708b18308870e367479a4423784ed488578af89d6af77",
         arm64_linux:  "499fe70d70f4e4904b6a5a4ec1b1edf6c4a1a47a075ea7e2ec2b5262ba47b471",
         x86_64_linux: "0e211868c9fd73cb49ad35ac675b5eafdf6b9f453df8a493df980c59a590fe5f"

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
