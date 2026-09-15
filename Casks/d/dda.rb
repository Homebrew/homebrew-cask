cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.38.1"
  sha256 arm:          "85e9c32136a08263df9dade4a85d271657daeb93f282803240e488962320e73c",
         intel:        "8e19137a8c53dad73df3c766f08246cd4b4998a8c1255c236d087277439594d9",
         arm64_linux:  "edc6599784c119d8a1bda7b7718e644264960eb55f30686213579aef1cab9439",
         x86_64_linux: "b19de0adad4ec31144d26d38b2cbdac9885278f3f8230c736eb52f74ee55ce82"

  url "https://github.com/DataDog/datadog-agent-dev/releases/download/v#{version}/dda-#{arch}-#{os}.tar.gz"
  name "dda"
  desc "Tool for developing on the Datadog Agent platform"
  homepage "https://github.com/DataDog/datadog-agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  binary "dda"

  uninstall script: {
    executable: "dda",
    args:       ["self", "remove"],
  }

  # No zap stanza required
end
