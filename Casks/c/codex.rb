cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.115.0"
  sha256 arm:          "16219bdd21c98283c148fd0216092b099a65f9372b4d21c4126c002549b5efdc",
         intel:        "40f9406c44ad41983f29beb2a30ef17791c7b805d6fab099198ecefb9aa5ca8f",
         arm64_linux:  "ea93d11096e127ac0adc79db4a884f1e2121073eca96c8672fbcdaa39726cb21",
         x86_64_linux: "fc779d4eb31992c2d80e76e84875063319959f1acd7a90440998776f32bcdd00"

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

  zap rmdir: "~/.codex"
end
