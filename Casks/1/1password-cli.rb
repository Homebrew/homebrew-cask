cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.24.0"
  sha256 arm:   "a645dd1126c803984fb0a500f9cc422087ce84dd13e246b87867c3b8f29dfffa",
         intel: "4fa999e8d2d5eee74fe912c38ff26a07f0a6593eeb417119a1f5c936d30c1bea"

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
