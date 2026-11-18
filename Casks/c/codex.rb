cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.169.1"
  sha256 arm:          "1f39d0dc51f55103d8b043332e0b3dba53b35295392899a911a7714a4c342dcd",
         intel:        "207e2b9d877655c2ae5e5f1adddd67672d942668f0975cf47c7bcd140a4fb212",
         arm64_linux:  "3de502ad37d6f58e4dbc917d76ccbc8f3c16a4084cfaa78afadaf6c86559bcec",
         x86_64_linux: "738df5b3182e2b858a48143f0c2fff288d8dd200330dadfe4c5c9f3eac7e2244"

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
