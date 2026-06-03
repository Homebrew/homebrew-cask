cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.20"
  sha256 arm:          "ef58851be71fac3d56e90a5111fc002a6366691013770d010f98d65b43481039",
         intel:        "dafd3ff5fdcefae803d745b5294386b64d4380b70dbf5026f569cb77ef775c6a",
         arm64_linux:  "1f64a6cabc934694dd4cbac856990e88478a5e8b9e40b0493bdeb730c06d341f",
         x86_64_linux: "bce53ef9d4b1d72843134c79008dcbdce1033010dd9261acef5b002daadcf406"

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
