cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.82"
  sha256 arm:          "1e4c8a78b050d93563e20f622a41a34f8e96b80575b1c958ad3f095316fe6189",
         intel:        "c028866cfb79d301ff85ed9526176a143dab5225339d92f41e3f21528e3eb396",
         arm64_linux:  "b4727c600786d64a3efb19f73a6c8b951b075b35d6fa7ca9519a089411507a58",
         x86_64_linux: "c74faf275141e16548802418ebf10763947ebaa00f2427bb80f022aba63688fe"

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
