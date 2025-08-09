cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.24.0"
  sha256 arm:          "15d2c19e93f0d5a71ea6c17013a91eec508ca25cdadb34697b06eddb023ec816",
         intel:        "ecfc6715ce3018c5252e820a146c95b5506e9962833494abae78c7dd28ae18e4",
         arm64_linux:  "2bb5c126aca68da1001fdd20469c3df2e06fcd8da162bd27e15c2d15dd1c4c85",
         x86_64_linux: "8fce03114e90463a67eb9dfc6339c8378c51071bd81f1e80e954f350d5a94a96"

  url "https://github.com/DataDog/datadog-agent-dev/releases/download/v#{version}/dda-#{arch}-#{os}.tar.gz"
  name "dda"
  desc "Tool for developing on the Datadog Agent platform"
  homepage "https://github.com/DataDog/datadog-agent"

  auto_updates true

  binary "dda"

  uninstall script: {
    executable: "dda",
    args:       ["self", "remove"],
  }

  # No zap stanza required
end
