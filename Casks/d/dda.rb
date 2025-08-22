cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.25.0"
  sha256 arm:          "1dbea31a1caf2f7d65422e8cb15e9a714cc999598c5a9268156af0f614b64d55",
         intel:        "e9faf7f19665468f3c41ff0243b0e20b7a9a0fe2bcc4e7c9d595e7171ab49849",
         arm64_linux:  "3ac5538a9902376cf79c0d09318eef237db7ab3ab91ffb40a1fbf57d76c6ffd1",
         x86_64_linux: "5dbe607458284982d635af0fdbfb888a7be324652f6e84b3a3ec68e0eb5db04d"

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
