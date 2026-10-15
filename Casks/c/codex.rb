cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.163.0"
  sha256 arm:          "b0344fc2e41f15e0071147e5869008047b8ff4bf2c4a8897975d3bae3f103b34",
         intel:        "0c182d6194da7003943678dc87866b54b3dee719edaf8d092f304affbc6b57d1",
         arm64_linux:  "9d8ecf2d19d3e184877983902d6c85de48b3888dcb72c382a8a0c975845927fb",
         x86_64_linux: "582646c6bf0561eb0de540f7fc85b9121b0091a826bc6e96830b7f1722122182"

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
