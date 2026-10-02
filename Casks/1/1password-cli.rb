cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.40.0"
  sha256 arm:          "43b9e7c245b48207c789ba1b8a481ccf4a658f60dbed8cc8b70d36044548a994",
         intel:        "a435e0257ea35db77efca2c668d0faec20502d4c7e1f250a8dee59a10a5d985c",
         arm64_linux:  "0e8ac99ee93d661aa725dc24a5ef8bf344741d224064a5dfb469dc689faec86a",
         x86_64_linux: "74277219e8da60958c00f9aee9d2023225e98fdda8bfd2156a5d9e85e0edaab3"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_#{os}_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/check/1/0/CLI2/en/0/N"
    strategy :json do |json|
      json["version"]
    end
  end

  conflicts_with cask: [
    "1password-cli@1",
    "1password-cli@beta",
  ]

  binary "op"
  generate_completions_from_executable "op", "completion"

  zap trash: "~/.config/op"
end
