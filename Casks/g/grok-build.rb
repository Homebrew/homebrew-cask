cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.25"
  sha256 arm:          "9ef4a40ad60c6a5178a65caf39c2a148e6a98d0d2d350b10329dee34d9195d9c",
         intel:        "9b19824d35fc379eaf4838f4b3c1a52728196d7ba96014fc5294e0782af4a7b4",
         arm64_linux:  "ec047ab8a52f297b2959c4a747f80d42f611b1e3608352b784acd54f6d1bee66",
         x86_64_linux: "a46d17bcd602c46135b5be2da69a081447f8c514c5ea733c5be1265bcfb62b80"

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
