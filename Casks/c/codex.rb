cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.133.0"
  sha256 arm:          "13c78362beff814b7dde16ed756376236777669869dde44bd232673500df6853",
         intel:        "2b91bd54f0520dc994b5c322769280f94f1c227fdb35dd55f924eac8e2247b91",
         arm64_linux:  "268bfe8cf8154940fea256df75cd441c54a0c71e6c8ccd45ab3f76ff28ba1413",
         x86_64_linux: "d06019ab9c35d281b78dc2ebb2ae55c2bb97ea11bf7f452bafe390eddb0034ef"

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

  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
