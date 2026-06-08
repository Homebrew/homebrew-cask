cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.137.0"
  sha256 arm:          "628d2278b1fa2a467452635f2fd5aaeee98de4a94f2af06031e4790da6844046",
         intel:        "32206ff8e4edb3422832b24d25a521246e4478b67bab2ec63bee632fdf94b306",
         arm64_linux:  "1b9cae96e27f5da2752054a5bba9204d486939ea60c65df4ba4a638458734bda",
         x86_64_linux: "d96e88313b95597e9cbb8704f6db16dbb81c07142b08cfb628479ab433696931"

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
