cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.75.0"
  sha256 arm:          "fe515dcdcebf823dcda243b8f15d3c938a1a6db7a1bb21bacfaf5560afd3b67b",
         intel:        "25757bcd7e4275dd78df22049e0815746886426ff18a309e999c8cc1d8dc1bbb",
         arm64_linux:  "99dc9188f03f77e9061c82bc7bc8707efd4a9ada82e0529504c87f9f812510d1",
         x86_64_linux: "33708fdaf6dca12b50127c549cd6855e1fe94d47571a066c5e2106129c2f1783"

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
