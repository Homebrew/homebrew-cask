cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.77.0"
  sha256 arm:          "3b45dc447e5286dd959ad050e9c3f16aa88bbd3c6943efbc95daa7c1d2393d10",
         intel:        "58182154669a8f5ecf43ecb897b2414caa79bc8db96f83aff4df60b1087532e2",
         arm64_linux:  "d524d8419a952f26fca3868ec3bf51912119b0cd03d07d0ca29826335226aec6",
         x86_64_linux: "ba572c6a7b9bac6d7714193d983b9f750be39df2191374d93451373c6f33e6af"

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
