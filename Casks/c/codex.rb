cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.86.0"
  sha256 arm:          "34d3ccf4b2659644a17c8984413a08ed1594e54f1e46e60bf4d1b90a4b4d083d",
         intel:        "ae09149919931b367160e7ba6cb1bc44b3e36c45cbeff2ae5d8dd2600939d3bd",
         arm64_linux:  "cf8cd2f5ea3a46f970843dbe9b89b82c324c7fca1c5af4895eddb6ea5781d243",
         x86_64_linux: "4a125c3a0f0e66e1c9db390e505afb48f4d49391ef45b6b9a12e72b038bd8809"

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
