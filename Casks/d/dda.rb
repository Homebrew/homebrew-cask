cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.24.1"
  sha256 arm:          "22077743d1e55f59d8131bf431542c5f9f9cf97ad2b59f0641b53f639a3bfe5b",
         intel:        "c8f1ca7f0a3b174d76b0a3903a9ace60c7dedc902a048510d663353630712a5b",
         arm64_linux:  "9d7fd0aa40f30d09bcd83554edf496c2dfb3371d2025f53207c2e5f62154c71b",
         x86_64_linux: "3fc3427cead34ff18915c2090c780d33826ed0ab05dc50e63bbe61fa4cdb7628"

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
