cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.38.0"
  sha256 arm:          "242d5af17dd2bc5142127fd7c54ca9f45035f0b6817cb1bfd3279077838427d1",
         intel:        "8aa664344845081c818ea840e00a574795031a8295b654782960d83f16ffabe6",
         arm64_linux:  "16de2b851744b29dfc2d8290642fec54d75df9e2d6dd5266f79b9e1baa841023",
         x86_64_linux: "092d691b08321ff1dee1c465234ee8aa1675654cbf2cc926fe603f047b02cf06"

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
