cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.170.0"
  sha256 arm:          "975524bf13aedd1b122d8d0e00c09ee67091b8f688c0b374943dbb3cf22c7893",
         intel:        "2e971524460a570b913dbdc9b49e5e9c14556e44e7f62f00b95b4a8f1e2cdf25",
         arm64_linux:  "3f7e1ae38c4fe27322e082b855e8eec936d08fa538d62b71c07e2a53f34e8847",
         x86_64_linux: "a77ff87be7ba809d715728270a78f5ce3527dc07529416d1ef8929b90b8475eb"

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
