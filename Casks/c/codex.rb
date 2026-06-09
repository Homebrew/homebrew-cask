cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.139.0"
  sha256 arm:          "c28344255844d83a728c084c2d9e21e168b5d217f6049d3a9a36827903f16fdb",
         intel:        "c8b52d7588977f6cd055112faa0f3e6b9ec764473bc1be8efa44f3c8f68d14bf",
         arm64_linux:  "2b7407643e0e74c525d84347c9eecec4b3d275af0382142ac42216508bb0b2a2",
         x86_64_linux: "12ebf70df41dc831061862912ab5e7eacdd112bb17e8ce9b2098cb3d92180081"

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
