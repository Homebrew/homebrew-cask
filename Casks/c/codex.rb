cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.153.0"
  sha256 arm:          "136dcb640e7ccdb018a354b9c1ef269f88b3137a5c84b1416a3b7d3d6b904299",
         intel:        "ff23ca96a16ae9981eb437b702ed1e66a1a2927e5c33698b05fa3e27537b75d2",
         arm64_linux:  "076b2b7512bad8b96e24370c031d2d1311f983e98650af9824639a619fa99be4",
         x86_64_linux: "27b0d7a753ac190c343918541a42067be307cc88a32b1a9feaf6f93648a0e9ea"

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
