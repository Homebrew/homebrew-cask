cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.63.0"
  sha256 arm:          "a7a66c8fe132c5634cdffccb79f3bb67ea7d487d9d1052e818fb0ba56a7e1e86",
         intel:        "e76fc4a5022f87f621ccf7434b44a439fc866636bf6348242d0869c9a5d6b543",
         arm64_linux:  "cd4469675263fe7a536483d76ec37dd529f30683f55c30d81f4ca6b7e3a899d5",
         x86_64_linux: "ebbeb9b5fb391fdb6300ea02b8ca9ac70e8681e13e5e6c73ad3766be28e58db1"

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
