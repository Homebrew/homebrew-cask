cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.60.1"
  sha256 arm:          "7b9390ec67ca1c776ee0dd0ffa3453c87c9c4b3369ecd0051efb03227ec82cc8",
         intel:        "b799281dcbd3a715f6f809a309618f993a13ec6aaa586d30b8a2d95905162197",
         arm64_linux:  "0c66b1df4e0fadec0fe89ea86a53f2d7c19f5b8839c87aeb452e7ccecab89a2b",
         x86_64_linux: "89b5d08cc592c6681b6695bbd0d8c4b016a663ce51a1bdb1487c1bded0dd593d"

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
