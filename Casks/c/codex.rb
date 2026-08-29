cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.151.0"
  sha256 arm:          "cb6e78eba80c1bc310a533f6f1c6c948377733bc06f9e837949334e04abde9c6",
         intel:        "e8348e1192f155edb21bdbaaf3231c2321087910bb1472b1306f94fb1108ad70",
         arm64_linux:  "c64ad6e4f82609552a37069365b50528ef49e986aeab24a538781a18a402773d",
         x86_64_linux: "6e35ac60b86c0e8c7f8bcf797be8b92206199f6253200b66ff0547276f8cfa5c"

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
