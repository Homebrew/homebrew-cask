cask "grok-build@beta" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.1.219"
  sha256 arm:          "2b640258cc0f33140afce7b6cb16ffa86d4c9102e74954b44788e90a2d4d727d",
         intel:        "ec68e45bd8c62c488f81bb31467544ccfca934f01b1083b6118bd0eb7a73dd2a",
         arm64_linux:  "7dde7fc1ec8154edb9f2ff2dab2a8683916306892bba03098d1706552e717266",
         x86_64_linux: "c71370e7408f9969bb2c44833efb85943d271758eeaaf62108e70b78e2130acb"

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
