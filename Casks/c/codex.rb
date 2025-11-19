cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.58.0"
  sha256 arm:          "364866f1fc6648200c318f70d1cf3cb0e4845c06f4cb21caa7f5d323ff1ef53d",
         intel:        "36b02c2703e89c48040b94d39572b6bfca91c67a3a319a9c8017adcea4e867f5",
         arm64_linux:  "53a2e359b8d8523602c998329865b45d382d95f8f28a37c910b2d2ced9bff855",
         x86_64_linux: "6d42a5a192dbe3f257bd60b3b242790b5897fc836bf7fa874b4afa470abb15f9"

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
