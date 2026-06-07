cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.32"
  sha256 arm:          "51b8728ec559ab630f68317d756a41fb430fd56d7be09eccc2cfe0aececfeaad",
         intel:        "82ccf0f2534c398b2515fadae20b8af70ea860f5508328556931d48f5eb5cf7e",
         arm64_linux:  "00acb837a4b2569a953ef2b503b0f812819b41c4cf8f397b0dc93d15ad2daa0b",
         x86_64_linux: "a9ab04dfa4bf703f724b223e45c7f522c68874421f948f6296ab3476385cbdaa"

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
