cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.144.4"
  sha256 arm:          "77c8969a481302f9db1d9ea2a6c21c083abae3f1a8fc8a7275dc38323699391e",
         intel:        "274ea4931246621d477ad61d61ea3303527878e77fa910087df52153f5e6188e",
         arm64_linux:  "4d07243ef4ae6786b8b321d7aea3f9be4e1d2c597ae5407e7c1b9873334082b2",
         x86_64_linux: "37c985be9d89e8c4f43b3aa0594c1213eac212d30ae2b95221f08fec807515d1"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on formula: "ripgrep"

  binary "codex-#{arch}-#{os}", target: "codex"

  generate_completions_from_executable "codex-#{arch}-#{os}", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end
