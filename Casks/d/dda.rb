cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.28.0"
  sha256 arm:          "e5d8bb5c60816c6ac235c8bb8e947fd8abe87df11dbc713eea6efc1f01178dc7",
         intel:        "e78fa988a4532f0ac4e2413d66ea2fc5e9c39945f85d62ba84f5f54740a04611",
         arm64_linux:  "fa9d9fbee9b1e99ce70205da651483da28d4a50d15be8ca59ceb856846a1afbe",
         x86_64_linux: "999653e7f22d0a4b56f643e9704dc1fa18f237db5817b872a0c3f56f3cebcb58"

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
