cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.30.2"
  sha256 arm:          "9e766fcf6688fb3d4e6bcf1ae2ff836f0b376221c16258cc1f28f63e0186e6ce",
         intel:        "8fd87f97b3524cc035e84e685e1bf5079ade9134c9b80c162afc63655ea3f5bd",
         arm64_linux:  "0c3a9c9bd2cf57bc1933c3fabb98cbd1be59fe9ad2ff8a8e0daa0a887ab6a8e6",
         x86_64_linux: "33d263e40f08f05cb953e76c216cbbd7823b59cc4f9dea65bc2e8d78cae0f840"

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
