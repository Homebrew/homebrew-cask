cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.124.0"
  sha256 arm:          "71e8744944791ca8be22b9a51b1f1114af9b05d6dcd29916e53f3961ebe529ce",
         intel:        "af2300db912d97431c4a8d1ba47f6e979ab45d4923f3aa60c17597d610e03c18",
         arm64_linux:  "1301b1624c9ee89c41a501b77b95107a8dc3c8c285624d72edcda7921be6332e",
         x86_64_linux: "70948cbaa8d7318e526da430fbbad1140cd7bd08ba78afb282392a11e7bcacf5"

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
