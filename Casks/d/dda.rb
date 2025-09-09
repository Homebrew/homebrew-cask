cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.26.0"
  sha256 arm:          "d386ae361acd691282e4daa92394155d9ea70f736269bb5f7af47c86fecd911e",
         intel:        "f64c8e47e180660ddfc23570a1d4c0923266a6049cbda4d4b5940a558a9f012d",
         arm64_linux:  "4933c7365c8d1d7a642a9e354b85e058c5715556bdea756a35f533ba9cbcb0f7",
         x86_64_linux: "f5890fdaebf63e722d4ec905c148d2822ce33e0723f3f7f1d729775082bd2487"

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
