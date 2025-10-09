cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.29.0"
  sha256 arm:          "d516d6a2ced3751adfe396e8ef87b7c150170b3a7e949404d929596c61f6ee3a",
         intel:        "710caa761b91ab9d5f44795f6577048d1c1bddb7dfcc26e609e1e9c413d4ca86",
         arm64_linux:  "3aa888bedc7a2fdd7eea86a22d43e6a7aa41ffbc02b66c9a40bef08cdac6176f",
         x86_64_linux: "a3195b523c233bbd8df7e20b69f32f4489ee17f15690313553b2ea6652cfb5fa"

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
