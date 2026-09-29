cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.159.0"
  sha256 arm:          "7748d07d7921a67b91d015e9d0f43177c675977e67f955b2f8fb96dc880dd5d7",
         intel:        "ab64d30288454124c7c15abd81672a9dfda7e3e723d76c4cfa6c0aba4b439017",
         arm64_linux:  "7399d2bf7618cc8d6845a8acdb2078106332861f7f30d36527e8f53208df89da",
         x86_64_linux: "35da65d7e8644e28ea0a4d4e3d8c15b40c6b492356d4cf21986c7e341f83a24e"

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
