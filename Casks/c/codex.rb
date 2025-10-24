cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.48.0"
  sha256 arm:          "6198eacd74e0a7a71e0738a6ccef636b3adfc97482cd7bdb5a395b9c394b2a07",
         intel:        "0beaa15df70521ced40c12ab4e0fafef29f1d8264dce75d402dc8dbf0eaaaad8",
         arm64_linux:  "ac94b712a59e768b8de0b207034116fb1f81540e6a8732ac6786ca99c2deeddb",
         x86_64_linux: "221628afd4101a8525f6b2e13a9d7942e97bc751dcd0135f726d00d70b96e128"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "codex-#{arch}-#{os}", target: "codex"

  zap trash: "~/.codex"
end
