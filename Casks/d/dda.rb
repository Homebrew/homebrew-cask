cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.30.1"
  sha256 arm:          "229de3afa6d867940fc3fee97d4fdfcae69788870922ea091506e3100d7ab22d",
         intel:        "cfd2cf8a7937b61a0507889aac5a64410409a14d937d2c535c745c04251143f7",
         arm64_linux:  "3d6d11c6ddd735c6c01b51bcd5912b5d7425119b8466246f01ba697bc592e1dd",
         x86_64_linux: "a43c14c652fc6dda4821ed7d69889afda1fd659759980fe32a9baa0508e7341b"

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
