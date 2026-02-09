cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.32.0"
  sha256 arm:          "b7b4decd5d81011f21db3080d76a023d1c03c45a3e20ed35bceeab2c57af86a2",
         intel:        "358f277a2366504118f46e0099e548d1b230f8dc795f9017b635242bed6235ec",
         arm64_linux:  "8fc00a493ad4420db9bc647c180950d3fc1bf43b06fb278290c7c581d9d3bc36",
         x86_64_linux: "96ca1501228d986097fd70455d50b051485cb52595981f68389c808b2ab3d4b5"

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
