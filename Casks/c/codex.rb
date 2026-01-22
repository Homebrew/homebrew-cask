cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.89.0"
  sha256 arm:          "86845ac37516a52d27a6eda05a55a92faf84679a8ff6e49a942843c343c2d9e3",
         intel:        "36cbb8175096d8e691f6616ed0aabc616b27bd204d58afe20080cdd6fffcdf88",
         arm64_linux:  "0bf08f80fd3825cd758e0f23a35e44c79075476c4880e5613f2a605a7b5ab53c",
         x86_64_linux: "b763e235573b4dcbf2f239f3ae4f9710644d46ad2a29262747258476ca460003"

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
