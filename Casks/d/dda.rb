cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.36.1"
  sha256 arm:          "a49dff94ff2a94dd72ab2701982f993d9468c82b3ecd4cad3b5350aed08df6c7",
         intel:        "35cfd107ba74db9fc8efcc53d2ad380fe7b7ccd8e5a2d3f9fe78b1366a944758",
         arm64_linux:  "68751c7fa2d9a897f9bf3bea36e0205c4c148e329da8c5babd97293c7fcd66ca",
         x86_64_linux: "3baee9d3724a5a9ee42c350d9946df64e5bc5151613e82aa6bd4a40e996dd836"

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
