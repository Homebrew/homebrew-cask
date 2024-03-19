cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.26.0"
  sha256 arm:   "3268c990b4e9368c5981b53f34e6ca94b4f762009811817e62a0c3a2d4b0f4c3",
         intel: "2dac9d6fcf06adc7c0a0e82a4e655ab4582fc01822d39f0b3fa02d14fb1f7f8f"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip",
      verified: "cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/CLI2"
    regex(%r{href=.*?/op_apple_universal[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  conflicts_with cask: "1password-cli1"

  binary "op"

  zap trash: "~/.op"
end
