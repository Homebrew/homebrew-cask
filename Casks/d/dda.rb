cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.33.2"
  sha256 arm:          "05247144111de3b376b3b269e1ce86cb468080f8fa67f16331c6a2e6f1812462",
         intel:        "eb6cd90af71424bce503683f9d6d174addf9298b9f71c0c77950f0b15ebd8704",
         arm64_linux:  "1c32afef50a753de8dbedfb5756f28652d7bec2e8b48510d41ab11e93d639ec1",
         x86_64_linux: "101ad33aaa8d054763062f9d2413c16c5ca5808c2a9238d7168b13bbc102785e"

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
