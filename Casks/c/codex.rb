cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.57.0"
  sha256 arm:          "74e1c0532cfee52f2efeab9fbb746fea7aa808dd3fa5694409356a1ddea97b39",
         intel:        "d29e67110c6651f314d3188154c92375f6eae76e31511947023cf65db30cef0d",
         arm64_linux:  "987660ebde0f5cdc083d52d218a894837fab498ba42b80d22ef7224c7e012296",
         x86_64_linux: "a558ef07d234771fdbcdc761a45924f31a8aceff132d72d3cad70d2690a7eadd"

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
