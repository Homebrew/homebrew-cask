cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.102"
  sha256 arm:          "1e424cf7264589f8e9ecf316acd34e486d0ff5f3bedbefe6832fb63f0fe89768",
         intel:        "b76c438c9f3f9722420151be24199e0abbc665ff56b32a6923f9b077c3d7fb4f",
         arm64_linux:  "7023007a2b541d88b046cbc7e8016a598a8683f79fe6bba14fad6606dfa3d1fc",
         x86_64_linux: "f5c39877aed36ac916e360aedfd519fe26c26542f8af6ae027fbf8ef22eed597"

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
