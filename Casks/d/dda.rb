cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.39.1"
  sha256 arm:          "834677309303b40d177d5ea426ee1291cd2570e6c0cff58a956d81e14d76ddcf",
         intel:        "6701bc6bd660a0dfb1c48b44743363534c36c9cd105d549c9bbe5b2b2cac11cb",
         arm64_linux:  "f95aac622df47d1f63151a4f41593b28b486f3b19ae8f83f40498833e623325d",
         x86_64_linux: "13b3b4b1e74b4f06d1861fc702dc33adc9185abadb88492d790e4f1d9280f2ec"

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
