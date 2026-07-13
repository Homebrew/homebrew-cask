cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.144.3"
  sha256 arm:          "249aaf12644add3876e740998cba0eac8d7d175e903add8cbc8d8eaa1f02e2b5",
         intel:        "8a0191112287e0686aaaf1b3daecf4cbbf23be0e0134fa3c89b0f68bebdcaaa2",
         arm64_linux:  "dd76cfd5a2cf9bcf0e3224afe28e23065cfd27262e06e0ffbc8fa40343f0905a",
         x86_64_linux: "b9b4ae8e9b561c64dfbc5ef52c6319cba750ac87de3c7f55885026231e3aea89"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "codex-#{arch}-#{os}", target: "codex"

  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
