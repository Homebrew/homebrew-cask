cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.93.0"
  sha256 arm:          "ad1dfb08d8ccfdcdcf945c6e4e86b6470d69052c74741a1dd9fa04566f407abe",
         intel:        "0681729acc0d2e18dba95a6df24eede4658eccf09c9249f0f7cd4fe1c72acf50",
         arm64_linux:  "8ae775950876be6867446a73762fcb9f484f4ef76e510b2f59eb0b3979be86ae",
         x86_64_linux: "3574eef71b062c17904b0761c397a97709ef28e99c616e2d1db261b2ea293d07"

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
