cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.54"
  sha256 arm:          "95487a55b90159032a5f4a36f3935b34de733ca8e41570a2fea78ca106d8703c",
         intel:        "7984be7f6c896832d2636db6ddd23fc74ad0c1647b2c469d6e2f736f5d1744ed",
         arm64_linux:  "5816d35849b3e167e535422930a82df66aa928daa94bfdafe94166cb3e89f08f",
         x86_64_linux: "4a646591555fb8aac6ca6e067e12c6302bfe7d444e39fffde288fdd0a4c327fb"

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
