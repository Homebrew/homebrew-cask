cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.142.1"
  sha256 arm:          "746326a70b185837c2660e501c3ba4543bf6e5250fd4f1a567fbc3854b518bed",
         intel:        "4bc6942f35d78056df92322a4bfc8b70ebf0c1cfad5634f0e8fb7721d9f14131",
         arm64_linux:  "025492824972846178a70af446594b3712a2e6f9f8abbae6dad668fd06defadc",
         x86_64_linux: "20c616acfc3fb0d21f507ac14fb49da9426914a04eb0af857f8fd7ebf16f4e88"

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
