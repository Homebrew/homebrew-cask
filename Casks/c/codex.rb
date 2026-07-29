cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.146.0"
  sha256 arm:          "cd961b480f6dfc4703bd244601f1927231fa31a587cb9046ccdffa6c4c29e7d5",
         intel:        "f72f5ab71729e90b8e86343e9199c0f7a7eebbca5d6b1fc4cfcdaf35a3e5b641",
         arm64_linux:  "c6eb28ec19bb5615b60e6787165ef28482481c2ce2617da565b83e591bc44c13",
         x86_64_linux: "3c89125af1d7c98abec8beb551292ef99daca52e204e5852a9139feae2c467e5"

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
