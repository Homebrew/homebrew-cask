cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.35.0"
  sha256 arm:          "0437888ec9a3ab5e9f94ba365018d22d412aecd18eb21f057320c6cad7d335c9",
         intel:        "a2f4b00ac7c471b8b067558bbb5e5e5f158cc45c8f36216b94a628360868079b",
         arm64_linux:  "cdd9e59a26f1683a86123564b7414327ff6041768945ac0b18170444fe57df2c",
         x86_64_linux: "273cb9d3dbffe597da2bd85d62eeff079815886bd3f3cd3470ded534cd14697d"

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
