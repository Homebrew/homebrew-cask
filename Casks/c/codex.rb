cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.111.0"
  sha256 arm:          "a5871e398fe6cbe8aa8307cf62f5a5f56a0dcf14ac728d73fa2640114358fece",
         intel:        "8078d73069459beca42cd3e3c435c2780446d249d4347b48543721f6edd71d74",
         arm64_linux:  "cbbe843dc90cf5862ebd3625e1d778f9ba6e0ba75c7dd661e1af5205f4538316",
         x86_64_linux: "a532e6b501cf503113d300dfb3e028a86aae90a3803b2620bc4b97a75075d658"

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

  zap rmdir: "~/.codex"
end
