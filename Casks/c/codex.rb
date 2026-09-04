cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.153.3"
  sha256 arm:          "1101ce8b7f9aaf598120bf14ff260c5f591eaa2c611cf8738070529e60ae8105",
         intel:        "a387e1b26f68ee9c0c6cce3645ed82c2958876db74c76b49a94f81a5e4d17522",
         arm64_linux:  "53d4604d339cdc87f1c396aca80c2addc8e092987b1b15c5f34dcda1fa54748a",
         x86_64_linux: "47bb1fb36fb1dbd5fe1af3eb0db422ffb4c3c38d9c1762c7618a9bed46c44a63"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  binary "bin/codex"
  generate_completions_from_executable "bin/codex", "completion"

  zap rmdir: "~/.codex"
end
