cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.142.5"
  sha256 arm:          "7156b19962735c9cfb555cdd7babe8c40e7976881f8712b781199219d2e3a707",
         intel:        "3969a3332b5fe3f1df6abd23714e6d901160447524eeb78ea12291abc87b3960",
         arm64_linux:  "b18c75c49645918fae23beba0ab41c05f07941601510a2451ba97fe519573c38",
         x86_64_linux: "cb933ec3cb61bf4b5fc88eecf5e6149829faa6172535b6ef0afb0154beb4aab8"

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
