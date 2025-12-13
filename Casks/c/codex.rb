cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.72.0"
  sha256 arm:          "f9c7b6871f050a57d7e68c2c01963c0e34c4042b99f180ecdf950dc9b1ac7af8",
         intel:        "1d2175f9e70dfffbd3d00dd2ff78b63b05b3ef6603c058f733cc9344c9f53e4e",
         arm64_linux:  "1ca19d0058648192f390e6dec9b624e3d5c32017e55a4c08d68a95adb59e9475",
         x86_64_linux: "422e03f5a5cc1a3b87734aa57e9d42501c3344795df4be2dddf99ff1fffde71c"

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
