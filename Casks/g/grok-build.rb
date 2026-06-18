cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.56"
  sha256 arm:          "cfbc05491bf15b6cd775d72423e009f9539cea90cc5de65666b3a40384790e62",
         intel:        "789ca1e607ba2a703f31a04fd0818ab89b0a418b6ec3203b258507587905cb5b",
         arm64_linux:  "969db5b62015535105924f67763635e966240a1e76e0965fcadfd13241f66236",
         x86_64_linux: "7b6588077408e00dc6035d1e094e43e28e04b202d92627fc461e527f57c9f7dd"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/cli"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"

  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
