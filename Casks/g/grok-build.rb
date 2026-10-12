cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.52"
  sha256 arm:          "c2caa9895dd763297a75e8fb6077e175d9c5304c53903e52cff8891a1384bbb9",
         intel:        "b3f1fa34d88b96cbf471005ef777028abfe7288fe61ff9876629f0bbc2cfe8a5",
         arm64_linux:  "fc32410b6883c15a39b9f33ec04a6bfb7d070b383e5dbad7efbc48c787e5050d",
         x86_64_linux: "1668414b047e1050a96d25fe17dfc3efe63190fbf66d8cc1c3de8633caf50d11"

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
