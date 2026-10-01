cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.159.3"
  sha256 arm:          "fad57a5681cabcef21d322af5aec938975cfb711b5f25d4ce4907e6561616d07",
         intel:        "fe3096a62b5d8395dd25abf9fe79334cf13c1520b825d236cd2b41eb75a63201",
         arm64_linux:  "20b7d673cf2b64b6c6208fa4fda06feb9dac0572da9987294b48cde1dab9d001",
         x86_64_linux: "3930f31ac5fca861ea3e444e2683f261190d96b63fba58e0a40a879174369cdf"

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
