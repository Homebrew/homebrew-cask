cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.140.0"
  sha256 arm:          "c81eaf1b4c9aee0e81e2b39dec1742a57b61be6c109f8811e7fcd41f55c2233d",
         intel:        "2bd0edf75fd1451425736bae41470c3b800fe8eb372c194a668434f9526df9f0",
         arm64_linux:  "ec6c804d415e42dd28cc6f8c6cb5238b00c9af4bfb58b63be55e26ec4ee576c0",
         x86_64_linux: "48e591964d4bbaab7c0433daed41c65ea8f152fc0f1dd2334a42e3dd322a4906"

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
