cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.112"
  sha256 arm:          "5cf05fe670b1818561daf7566b580a5de6b81149166499d61072e49640b541a4",
         intel:        "9d00be3e3e28d1ce3c36f26d65c40aac2623917aabc6a20b3bda21a269d8ea24",
         arm64_linux:  "d21f1aaaba7f2930db0ef7d5a9dc3f814a94c54af208e091f72a239cac02ba39",
         x86_64_linux: "c2867112f7d89366123fe68a55a23dfb027d3602fc5b5b9cd5c080dacb4a2503"

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
