cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.36.0"
  sha256 arm:          "3895a0bc72a92063748009e20e4df9e45f471fab5b23ff3360f1a048a58a0a9c",
         intel:        "7c9d6fc6534426619e52f29b527d34a5a024d0161b0742c379fa37f6fd6dce4b",
         arm64_linux:  "06e0d654b3d0bd250ff834ac9960d57f42d3598151bca27eb222c329bfb2fdfc",
         x86_64_linux: "dfaef12daeab6b3d5e34dcfb76f56763bd9f9f661eb2b9265686c69b674e1ccb"

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
