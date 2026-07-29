cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.114"
  sha256 arm:          "e715f57f9018a1737c1a64ef1cb260ac2a5045dfa6a1a0e1c7a7cbe193a083b2",
         intel:        "115033a78dc4fe07c0f229d8c8f2e707f3d93e62ec75998a5c4734f445e36421",
         arm64_linux:  "478b0681185a9d0c7f358f06e2cc531a54e6b51aaf53f1ca1f4b453397fe3dc3",
         x86_64_linux: "f11d619c1aacb6169e10c119bbbbebc373ccbfe8ab926b76cfbfb5fbea6c8c4a"

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
