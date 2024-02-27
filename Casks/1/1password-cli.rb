cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.25.0"
  sha256 arm:   "5721061040d487e33f30bfff6f0f4b6f8647d728be0f0e12a6e7460d082272dd",
         intel: "69757576c32be603117d4b29a9c0b9ea71f8b63923248ac9b3ae65df7e0bd5f1"

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
