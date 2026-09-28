cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.158.0"
  sha256 arm:          "09f2a9fde318fbcd384f15b4850c1b90930678f4805647b6bded196ccf32f590",
         intel:        "46a687a4d52e2e935c23e3acaf1002a21ccfe4b6be918f407898438b5fd24b17",
         arm64_linux:  "bc55b988c2e0c54ac6a6d437c4e63781e671b269752ac26592675bb9e9f99902",
         x86_64_linux: "b33cd426c9acab9b34c5a93200ba4fe83c8e614c18ce5ef52b2bf36408b8e18c"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-package-#{arch}-#{os}.tar.gz"
  name "Codex"
  desc "OpenAI's coding agent that runs in your terminal"
  homepage "https://github.com/openai/codex"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  binary "bin/codex"
  generate_completions_from_executable "bin/codex", "completion"

  zap rmdir: "~/.codex"
end
