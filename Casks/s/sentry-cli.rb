cask "sentry-cli" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "3.8.0"
  sha256 arm:          "1dda212b0e168b9c4dc48d7d3aa24c1c37de9c6edf786e6ae661236e529969cd",
         intel:        "279c795b15de7a76106d30b6611b7942b1a97323307327bafc18335f10384c4d",
         arm64_linux:  "eaea24b5b47b61a96d9a2e353268ea41fd9a8c5b7979694330df614d4af672bf",
         x86_64_linux: "13f8cb34ae01a6a272d7d7c22e277a105286615b4020de900ea95a8de47cdbb6"

  url "https://github.com/getsentry/sentry-cli/releases/download/#{version}/sentry-cli-#{os}-#{arch}"
  name "Sentry CLI"
  desc "Command-line utility to interact with Sentry"
  homepage "https://docs.sentry.io/cli/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "sentry-cli-#{os}-#{arch}", target: "sentry-cli"

  zap trash: "~/.sentryclirc"
end
