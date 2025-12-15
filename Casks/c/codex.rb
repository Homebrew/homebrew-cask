cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.73.0"
  sha256 arm:          "d2cbd852c54a3d78a7729dacc27d28cbcdb56e79b165619a378b6024684334ab",
         intel:        "699386ba5f9519b7e80567adfc201ba9c9a8db1f88582b1aecf5a819072619a5",
         arm64_linux:  "536a11246729728eca5b5ff959a47bc750c5fad153ed6a11a7be776bd192f3c5",
         x86_64_linux: "0ac72cbe1790460fbb20b866c9f993f8d2078ed6aab9e4fcdd22bcdb65969106"

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
