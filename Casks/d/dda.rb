cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.30.4"
  sha256 arm:          "e8bfb60b344020f04556ab4a40a867468c57f13c8764f7958fa4215e4c6a0e2c",
         intel:        "e8dbcedcf690f0bbd5ee871b6f9f4b1490510af1ce4b82d91dcaf9d44959664b",
         arm64_linux:  "0fffc9a5f256c2f6dddd23184ce11ed2af39431e5200bb1f642febee70f8614f",
         x86_64_linux: "37ca3dcf02cc678cdb22cb4863fa442a32580738e017cc5f6d88e1c650017bba"

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
