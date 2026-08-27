cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.150.1"
  sha256 arm:          "3ecaec1e7dd7873fac5e505533618a92a7e3bf12de7869b6130c0e3cc7faf677",
         intel:        "6436bab7533a9700265e53f0e3b033c1ae4537112ba7a2bbeaea2a895991f864",
         arm64_linux:  "1ecac3f87823efb98153233b076ea3d6e34a7a8cebe43c5285dc5f79e1514639",
         x86_64_linux: "00aba704f029f6dc0d948be407a756e0c97cc840132fd691353b2c6b0a505b17"

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
