cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.40.0"
  sha256 arm:          "b2274f67f1b61b2592a78fdcb61091a9ad1ae8423a2c03747ea4912ed65141f0",
         intel:        "1aa8aeae4a440a18e18c802197c097965bf9f9708eb797069a046fd923acc404",
         arm64_linux:  "8c4cc35b8d6eb030adba2e54921462bdedb5dd98282cfb70728df7a49d2b4a11",
         x86_64_linux: "bf8f0177ba738e53aa08d71c0a1fac07b1d9f0530eaee9fb5e25657e8e8a8447"

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
