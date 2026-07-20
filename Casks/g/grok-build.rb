cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.106"
  sha256 arm:          "7229f5e2a69b05832c86db82bebda541e92b5c24958fbfacf5c8f463394d3027",
         intel:        "445d0a211e42e0c7efe888c8c928f1a2f38ea05d4ae8a7069035181f0c371faa",
         arm64_linux:  "d12be1698d56d4543f1f1095c2c26cd3d17a64e88772629673740991c188e4ff",
         x86_64_linux: "7180d0e03cc2a496033ff3aae2223ce239446a9827a59faa76091c7edd5e1c38"

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
