cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.167.0"
  sha256 arm:          "af45ed45d940d7998809622c1c0296d3098ed7d7fad695284422c228bd454517",
         intel:        "3d7c4c83296db63b5108e13612c77f3e5020b6c5f2fc004bee413a5cc92de899",
         arm64_linux:  "0de261ecf1e7f3028a7952f03fca2093f749277d38590b78bb32f8567756bbb7",
         x86_64_linux: "3bbf75e83de6b58aed28f2cf6e33ad423ec31fd4700a1457b94be557ea5a7c6e"

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
