cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.140.0"
  sha256 arm:          "96882725b0f467c3ef09a93b80aec2a812955a50e27032ce6b7e6c04902719a0",
         intel:        "45b291141b49ccaecf0f20e90b53d73bdfa67e7454e4a7329a959d5ceb029b17",
         arm64_linux:  "94249b314da9b75b275bfb929e7d5a8e48750a718745dd5f6def26313899b4d6",
         x86_64_linux: "9620e798900c6fb289199a9e0a8ed0c3a8cb7e3561048498ebc2dac354a1627b"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "bin/codex"

  generate_completions_from_executable "bin/codex", "completion"

  zap rmdir: "~/.codex"
end
