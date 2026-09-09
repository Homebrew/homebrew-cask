cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.24"
  sha256 arm:          "4291021c1570a7c8610277a3d65490a5e54b50311e222c6b4614264f02a215b3",
         intel:        "0c7a287a0b177f8a975487fd665c5213c130c06b3fe9367c9db8fdb16eb1008b",
         arm64_linux:  "f83f70fa746cee2b954af2761bd10e2dc5fdea1c51355be75040abab486a5410",
         x86_64_linux: "a31a1c270246beb8e18f1fce91121a5e83d9ba8f51a8b24346bbc75fe727bdf5"

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
