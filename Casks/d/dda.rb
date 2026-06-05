cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.34.0"
  sha256 arm:          "19980f0f6484c21a806b790721eee309a3d0a9b930142f1efd9f408ab04a6613",
         intel:        "8bbdd77c43e40c7a032a5af379bfdfe3fee430b98ea78579c2d502b14d2b5f06",
         arm64_linux:  "6ecd2adf180cb68bdd5eb4daaa8e8089c60556e0e7d70118317abcf13e8e761f",
         x86_64_linux: "d711a7a073158619b9d9f65e4c1c7bdcd9ad69cc1c768c2feac9aa82464000fa"

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
