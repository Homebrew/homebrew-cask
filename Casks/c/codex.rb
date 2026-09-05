cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.153.4"
  sha256 arm:          "35438da1fbf7a6db7ddb3bcec84448fa6015ba188461472a97d9d1da7d9c4353",
         intel:        "3ee638d7155c856ef31f3f4a85cb2195de1939962d3924c935b24f0514564a3d",
         arm64_linux:  "fc395cb043a1093ab0db34f44aba3199bfaa9ce640cd9be7fd588f44b0da64a4",
         x86_64_linux: "a822187e1a2420c61c5926721bfbd878701ed95547c9bb0d4de4498a16ba1821"

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
