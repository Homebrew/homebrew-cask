cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.0"
  sha256 arm:          "13c7f4f0b9abb00bf38216302ea4bab31f03e13555e3576620eca1de572a8d21",
         intel:        "a82210a961deac9f0cb72ec6c334196abf76a587be4593bc59db2deab85ee6dc",
         arm64_linux:  "bb7c51116564a2219f6a49850815060f416918ac407f1f2ba82c53c0b0d4383f",
         x86_64_linux: "28dbc967a5843dae2374b6834dadbab95354e685c7e5c8dc750b92a4e5fc7c3e"

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
