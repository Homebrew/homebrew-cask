cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.79.0"
  sha256 arm:          "7f01d9af4e72e473557faaa323ddfa064d1506a759f425983a85aa5fa709a3ea",
         intel:        "8f5d6428ec236ad469cadc6196e000a898366474c1b5433d8b53bc588c9fb9c0",
         arm64_linux:  "7c382adb6c994f96020db547ae9d3054b9283e6384dd0b6958d0a6b381e30d51",
         x86_64_linux: "370dfdc46d3fe309be3d5062f97d3c9a39290b181c5fcfcb8020ba9180558212"

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
