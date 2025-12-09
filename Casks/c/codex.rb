cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.66.0"
  sha256 arm:          "6970163a34d2078400c828102a638c8ef908ce1b560435e4416d827c82b6ec93",
         intel:        "b008c909662d802dd2a87963c2a1dbbc174ce35fb982a893b7fbd71c02efdc67",
         arm64_linux:  "699cdc8c3dcf1056c5ee2a275c0cc1e75030f8483d6d94d7aa61f9affc1b32c7",
         x86_64_linux: "c0d956bd7812857cdd2ffb92ce4d1d4ecc5487a385a679478653d5b63a40d4cc"

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
