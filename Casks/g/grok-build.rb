cask "grok-build" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "1.0.46"
  sha256 arm:          "e8daa302364c9c3b6a5546d511cfbd1ab5e5d407a9b04282f660665ea405f9f3",
         intel:        "5bfc1251b1a7307b9366d0cb5a1fd3f2563b5b319df49f9a9b09b4efe557fea8",
         arm64_linux:  "45b0943e736f00a249b9cf02af2be9e0749d97c09a6f55cfcf3029a1a836f23e",
         x86_64_linux: "41626a53292324140b92556b9d42ff5542e3dcd04aff85eafb8689dd4adb44fc"

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
