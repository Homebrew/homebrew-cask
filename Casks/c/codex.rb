cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.148.0"
  sha256 arm:          "bfae69c7bb7a3fbe68161f2ca9328839c7e6eea053a8871186eb6edbb1346870",
         intel:        "9ac9245ea244629a9ba4db3315f0cdaebb05182b790ee34271a5060875d836e1",
         arm64_linux:  "580db3c7411f5852b550876f185c30b61b674e01b948fd5030f2cd7a30db110a",
         x86_64_linux: "8c790500af2ba6e74ce4948fe26c651ac1f77f6dbb005b47c8d26ff711146262"

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
