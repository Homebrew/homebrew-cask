cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.40.1"
  sha256 arm:          "7591d3c674ad854120a5c0c4a1163ed7d2dad9179c09610625d96248345cbc58",
         intel:        "f3e79b406dcef36be9441f5e88749093f2c68b91af2d37aaf5f0b47b430c651b",
         arm64_linux:  "3e90097365cb8ce6290e2c90dbfe3ee45875a3818508004cd4c6ce2a10100835",
         x86_64_linux: "7cc98cfcf88cc915cf154dcb96bd02c2f191a06b51f3793629eedfb738b7784b"

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

  zap :not_required
end
