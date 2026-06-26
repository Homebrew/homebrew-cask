cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.142.3"
  sha256 arm:          "c30315cb41d66d000fc9ad66735f4288d9ff0c7fe748f68f71abad702d72f832",
         intel:        "b376494327fbb0d3c93dd752f3e73a1c221a4504bbfe345a8420bdf8f0bd3f4a",
         arm64_linux:  "d4bb18793cd53902593ddb92c409f262c05dc80e4235f865ede2378ba15a1dd1",
         x86_64_linux: "f96813f41692b4d8ae44d0812165a2fcc429196eb3481f6bc221afdec96a17f8"

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
