cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.62"
  sha256 arm:          "ec434e831afdcfce87780f2815fd732b1df8a4a8de96a491716ad75d13605a4e",
         intel:        "73cd05d2ce52238d8160de2091e6feaba0e7d136d0179d5911530e6a93b20b75",
         arm64_linux:  "0b808a2209728788d2e37c34ea1846d460b41528a9fc7edc7698b9e7dec12fe1",
         x86_64_linux: "2a46d9e4d7ebd7a9cff7f95716714b19dad5f21dd2a497822400b1fb128969aa"

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
