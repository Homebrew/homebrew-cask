cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.5"
  sha256 arm:          "3dfa7f04fbb5427a8fbead286591543aaecb478b3a0ab222c4329eca1a3b2f86",
         intel:        "21cbb063c6167175ba00a67f64ac638af8f79a44aef816cfd5b4915c77528e60",
         arm64_linux:  "1c1fe67d7c35497fb09f44a451f57acc3787add4c9aea2c56f5c7c75dc5ffcf1",
         x86_64_linux: "9ba87444e1819e8f6104adbbf4676a870c204380aa5c3e1c38a926c4ea677238"

  url "https://x.ai/cli/grok-#{version}-#{os}-#{arch}"
  name "Grok Build"
  desc "Extensible coding agent for the terminal"
  homepage "https://x.ai/build", browsed: "2026-08-13"

  livecheck do
    url "https://x.ai/cli/stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "grok-#{version}-#{os}-#{arch}", target: "grok"
  binary "grok-#{version}-#{os}-#{arch}", target: "agent"
  generate_completions_from_executable "grok-#{version}-#{os}-#{arch}", "completions", base_name: "grok"

  zap rmdir: "~/.grok"
end
