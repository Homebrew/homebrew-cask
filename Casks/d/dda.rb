cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.34.1"
  sha256 arm:          "35e9e91fc9402209368a91c2ce74ad8683635d118b25594099202f6a3ff8de34",
         intel:        "5a57eaedb1a3c679882b2bf4fbea378d2d178596d0a73cec3989632f9f4d626c",
         arm64_linux:  "d08ef18dc525f579a231361c15acf9c8eeb935317ddaafe0582620cf3a0869a6",
         x86_64_linux: "b0b6ba4496d87f6006e2bc2ce49b8759c0043b894a9488a2f9f43f8fe2c4a3c8"

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
