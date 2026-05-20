cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.33.3"
  sha256 arm:          "d484b55dbc15455b78755a08d732ee703ef51048e8bcc5d965ccc33f074ce492",
         intel:        "be028334a8f322600fd2e831dc8384aa2b08c43a29e08f21fe1c4a2ecf020b1e",
         arm64_linux:  "d880fc3df39f20ebb25a1ffe9aa620336bef3a614e4603b99db2a2ac726b89b4",
         x86_64_linux: "157261f9e9bba15d0dd3c61f8b04a67b1087d75fa4b62e36e15c591bd80f874c"

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
