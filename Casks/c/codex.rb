cask "codex" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-musl"

  version "0.171.0"
  sha256 arm:          "58c88032ec446e72922d911d8f03773102da20c16a6059cf21f6744bce57f210",
         intel:        "dd130ea3217b4e6fe4454c99949e0b28e2e8a9ad8da8c3a75f0c7265fab7153b",
         arm64_linux:  "d8c43bee6cf11b01eb18b95f4d7961092bc40228180808859e70dabb7784c1c9",
         x86_64_linux: "8391d67757496bfd14893eca6cbf0c96994bf2627566ff1f018f70600c9ef6b3"

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
