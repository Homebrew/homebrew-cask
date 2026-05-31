cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.14"
  sha256 arm:          "d45670a3d10cb181b86be5052ccc72901f8ae9d8ffe5f072fac141e1c0b6372d",
         intel:        "874034ae8074d0595e7b1d62d0d042c550e0f2aec12aa0b5508d1f823ddefda7",
         arm64_linux:  "d029aded09b77fee0bc8a0b11462746bf20c233c078165635911ce468d0a646e",
         x86_64_linux: "07bf12ff3a04dafa3a2de9987091fba2753efc344d13b17b2b381a117e793418"

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
