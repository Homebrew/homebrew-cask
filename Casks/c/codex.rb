cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.138.0"
  sha256 arm:          "cc39c15cf2f8ba6d64e4389a600200c554deaa74f39eba49e4dbcb2f753f4a45",
         intel:        "39a78a1f101980370afd8f83f810261abc18ed24b44a975d1b16802bc2c4b27c",
         arm64_linux:  "b8e906edfbc1aae008b9c58f7662666a2c91a587c2cbc91196a0f62fc510235c",
         x86_64_linux: "3030eda399cc88ed8ec3c2806163dd7bdc7390292347e50d8fe05381a82e15df"

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
