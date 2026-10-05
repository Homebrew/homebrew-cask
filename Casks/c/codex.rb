cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.160.1"
  sha256 arm:          "f73527ee09c6db869acbb37b709866b339ea74ef91d2de255e9c74ec960c6314",
         intel:        "a98f330c9b1652cef2edc7bc2ee4c47a0fe19fa098b686381be3c8842abf0ac0",
         arm64_linux:  "dff0954438fa455c2197ddb1f421d8d68625d98de610f76bedb6e5bc837ea35b",
         x86_64_linux: "340801565906a7028f6baaa9ab6853addaef221f0016a1417a7c1ffdd96c21f0"

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
