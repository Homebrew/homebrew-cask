cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.143.0"
  sha256 arm:          "7df2384f037519dff7dbf4252e60913a5c1c7fdb66c1467c9125b2b2d3594a86",
         intel:        "f776ef1d5e5f03151dd6e6af94cc7b13e9b08c3c52bd60327692009b01dbfb4a",
         arm64_linux:  "daec4cb18f3ad3e541e8986763e73019b3ddb726d1f8692e50ea5fa988c09d78",
         x86_64_linux: "d9dc731dc66e227b175b13c071be9ea126cc7672fcac8a87823da50b0d2b2ffe"

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
