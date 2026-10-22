cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.41.1"
  sha256 arm:          "2289771b68b521ee3dc1d63a013a6a1c5691e0c53e4c4fe79af8042b6ad3c7f5",
         intel:        "e77fc9a8ebb23c176fed7c56ea6e4a7184d2b89957e9a5d9a2feb724e7e0574b",
         arm64_linux:  "89abd60c17d5c614066c20e6abed816449eb018c5e0679ed63d57071c7bee85e",
         x86_64_linux: "e52476700cba9202ac7469bdfb2648ecdbf3438ac85822010f77230139e74966"

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
