cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.77"
  sha256 arm:          "197c66a63e5ac46e07450b0ca21d141ce665050a412180f185dadfae1c7a5b2a",
         intel:        "7728f79ea713ae67a4fa4736dcf808f6b386d9642202aea1df695073fa56675a",
         arm64_linux:  "b30eee14a656124ef3c9da8577b5e783ef2cffabeb2b679c5c49633e77eed574",
         x86_64_linux: "b702950aa5827d855e493278ab6215a4e0f5bceb5bba6c6243a9f55cdd143b0a"

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
