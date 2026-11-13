cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.168.0"
  sha256 arm:          "2795694bb5b89234e3da0dd0c2c9e7a71764521080caed17bf12c1e0458058ca",
         intel:        "67993fcb3051a1261c68751e1171f9c5a01662dfa42268cc58ea39cd175981a5",
         arm64_linux:  "127d5990f5b48bb327cf48a1bd1d09d65b7a626186158608189b37e84846dd07",
         x86_64_linux: "3acbff91c0a8e30767d47c8b6941279a603ab4087280aa3e546537cef3622cb8"

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
