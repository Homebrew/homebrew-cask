cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.164.0"
  sha256 arm:          "dd99e9092270691a67bdde7be04ac283dea9da8e86cbde356c2cc851a79205fa",
         intel:        "cfb2a9988d7ea448511166a35789af07a0065d1117db54350b17d46cf03d0294",
         arm64_linux:  "5918add6c7e9cf1e14a9af1b4c0f4bf1d24a43903faac26df5dc4c019ea91bd5",
         x86_64_linux: "3ec55053109608d5038f7e50750f7d25f768dfd740fef071aa710e2559b63aac"

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
