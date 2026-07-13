cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.99"
  sha256 arm:          "01bcacec12e7c2a164d23975f1595400ff7f3cbd74f50b1858f6a5a14eb9ff81",
         intel:        "96458a916a6e832460b1ea7fd2250842d8ef6a8e64786b3fece59becdb0ab9b5",
         arm64_linux:  "b7c1a41cf7fe9ab0a3dd56e801e6b819c4f3f933dca8a068864899d94221cd40",
         x86_64_linux: "9fccba400d3808ec34a991892096b34c6f5846b2b118d355001601fd5428445c"

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
