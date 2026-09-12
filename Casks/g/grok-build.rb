cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.30"
  sha256 arm:          "d53b6e543e482716236748914331db50145c696ac7af91f1ebdedcf5654cfecb",
         intel:        "809db1f1fb30373b431648ccfc889baaf47827dd7a113a3b9937c5ecd53e977c",
         arm64_linux:  "aad8c3c8a8b294c21377df60d368507f4bcd3530c6c30af10ee02a54cec188cc",
         x86_64_linux: "504dd6546ab991b75d36698242875ce461489cd1f8cd84285873cb55bd5c7d54"

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
