cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.3"
  sha256 arm:          "09deaf06804955ff2d6ccef2042af4031c659c47fd16eb3c72664a8f533832da",
         intel:        "b5eef73b94fdc72b8c67218f19abe2b2728db38f1f0e66903de8fb931948bd26",
         arm64_linux:  "ed44950eab90573b6f475191f5791713a56943939b3b9a62e3f4e95edd14acd9",
         x86_64_linux: "2a7d46dea3fbed067e4072258b835d401e017d6848dc996279f0fb3d668a0961"

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
