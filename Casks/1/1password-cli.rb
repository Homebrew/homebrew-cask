cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "2.42.0"
  sha256 arm:          "216e86c6db491c752ccb7819b3b1851cc8456ea015a1f7c8a58dd103ef0a474e",
         intel:        "917b0d2b41de3d943bb6562331275c43c4b525af6b003eade06248905ddd62b0",
         arm64_linux:  "e56c379fabafb393ce699258e484694abe464870fb41f35ce1b5c3f17868ba61",
         x86_64_linux: "261fe3844a43e7e83a3d85e8a9f36411729436a1d3add1dc7dd46cbbceebe9e5"

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
