cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.146.1"
  sha256 arm:          "a0be385972f38d02e81f9b40de1f842daf8354636fc295666b8630d2f6a5aec6",
         intel:        "5b61e447baa14747e1ea6ad10ad8fca1f8ef0d5e11f53ca88a144bf52cf12e06",
         arm64_linux:  "a72b2bd37dd69ece77f5584a418bc34ecfa4b28e769727134a1d604b4b2b8e5f",
         x86_64_linux: "15d9b6aaa47ee02743266581f8ab96b6049e3a2a13a82fbd7920745ba9fc34cb"

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
