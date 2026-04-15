cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.120.0"
  sha256 arm:          "b1083c438b752fa292057fb8c735f58d1323144a3deb9e5742c4e845152c95f0",
         intel:        "349cd44537ab1dd1f289cb41e6f4f9b846b20a0be307a7d9f177c482518e460a",
         arm64_linux:  "22dbc0b85962d3b6197364ae9e286947f7c999fe80b2e709510c2f798e226e94",
         x86_64_linux: "21b08cca7784be53d33c6f46cf897cd2b440cda58dc7912563dbc676b4d17017"

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
