cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.44"
  sha256 arm:          "b637a934c22ee480cc133a783712f5abd845ae87f7b0aa646c220af3d67f7c28",
         intel:        "b3346485ff2c00601d72300421769ad73323d92760f6f798c799f0aa4db33928",
         arm64_linux:  "a31506d73b4454bbf70c3c2821e41a042fa7838058ba1b271b009a926d175239",
         x86_64_linux: "f76431873efc5c8a50892d1e1247eaee23f6664bca385fbd55a06a8e7d3caedc"

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
