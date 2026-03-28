cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.33.1"
  sha256 arm:          "ddd279a094ff111bc6fa23920dad50c1e320c8c66085aeb2db23ffad8045076d",
         intel:        "02953e502863b96d9fe7e8f2f233895cc72f834f3ef15a139435fd5c35c9de21",
         arm64_linux:  "55f61091e2d089eebb3b1453fece88395d055008b83823cf70158b3517db0e73",
         x86_64_linux: "ad1dd64900bf9ed423ea01d9474ee707879ea51da8e302d13777f6a09a0f505f"

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
