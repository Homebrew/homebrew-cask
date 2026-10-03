cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.160.0"
  sha256 arm:          "007df41b607dbbc8d204b9746ce7fed2d4ce6c813f44c32ceee54175ca796525",
         intel:        "4d50514b2d8acd81ca8cfee55b667b3dc4f7681b65bf3299ff06b11a064f8861",
         arm64_linux:  "7f0fe42ff22ecfa3a47bc4a34f5b22c4218b431a4ec0aba51c7d98299f07900c",
         x86_64_linux: "4fcc47ab57f52ff75363951a8761146cd10c8288bd86fed45487dbb204a16b71"

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
