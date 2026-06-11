cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2.45"
  sha256 arm:          "f1e6334826eca85ffe148bd256e7d909e1d52e67262e015099df21b670b3a8bc",
         intel:        "72cbadbe6629c7734b7f441a6db9510b2839015b5b0f45bf8f6c70f529b2fb3b",
         arm64_linux:  "819670c7c2bdcb4312bc150ac4d1b49356a5f5704b8587fe55733d5b168244a3",
         x86_64_linux: "d8d781e1a6431bbd527844b820e4336f2aad874530b8c6d54de7c1c3d157a098"

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
