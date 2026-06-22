cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.142.0"
  sha256 arm:          "daa4443c455f48143d750912fa0f91d7b9456fa52972f725bc1254ae9b5a3648",
         intel:        "20141a58b1e077b23f0387e99afc3d76280ecd6c92ef68334344a0a379d29336",
         arm64_linux:  "63fc9816f174ab4f713031e638201c49cfa7cc5f41a22b9db71010afa7e09892",
         x86_64_linux: "2e3acb39a277ff11c314d832cfdd246faebeea26bf01aff8e9e10641e6dea801"

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
