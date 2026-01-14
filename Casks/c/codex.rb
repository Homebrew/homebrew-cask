cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.81.0"
  sha256 arm:          "466cbd09ca7188fc0bd3ea3d0748c9c9ab1e5e39e980ec0f50faea12ea7a96a0",
         intel:        "e488a92f8c01dd7ab3a60fa04cbcbcde09b567a029dfefac3c11198a11827fbe",
         arm64_linux:  "b72b7c64eea1a6932313945c0efa471d15a894fb1a12c68f60e75a84f73c228d",
         x86_64_linux: "98ed0b936b90e558e6486e2d38e936232135f9050c35b74bcbb91dc0834d1ae8"

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
