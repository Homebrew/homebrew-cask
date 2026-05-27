cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.3"
  sha256 arm:          "83751f61a14dc8c13d0b5e02c623d531ce3bdb2c8c905c96897aa15f6df47132",
         intel:        "eb3d8a561554c62a16ff35f352cd4d79d96f64e2acf80ec87b5d70338ef54f43",
         arm64_linux:  "a9dd12e339c5839d86ab7102e4b9bdd0dab3238cd254c1cc1b5137b26fafd68b",
         x86_64_linux: "2a0c4f5d0b58a47f30c2b3861d46774837348c6d3f7e24f4d8627bca50dda9cc"

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
