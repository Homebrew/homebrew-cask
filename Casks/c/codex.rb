cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.144.1"
  sha256 arm:          "326198829dfb4b68da59723cf605478a2e9bec89ff47feb645814a4c5eaf5f6c",
         intel:        "1c797880977549b281eeb4ecd9dbd145542c4ce262a2835ea2847f19922ed30c",
         arm64_linux:  "218ab48bdda98dde3e10df184cc0c4eb92c4372d9ca924ef1aa5fc81b4f6a38e",
         x86_64_linux: "3fd50cf96809b1eea294bbfba0a5c3a576871b4876a1f0e91226e520c1923be1"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "bin/codex"
  binary "bin/codex-code-mode-host"

  generate_completions_from_executable "bin/codex", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
