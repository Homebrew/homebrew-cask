cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.152.1"
  sha256 arm:          "0a5dffe5a4ab6769e70d962708d2a195b2adcf8cb96e7b9d969a2c95d2238575",
         intel:        "a36dc3f5b93f8726eb3be874796f423d6f0287980a10db770bf289046d72d924",
         arm64_linux:  "f93fc7015af13ac2a2486af23629946d9aade5f88b40c2cc7e1aa1fca2c93ef8",
         x86_64_linux: "2aeea68239b4d96081b3e7fe91d0d64e4875b224668c381985d22bb31d7566b9"

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
