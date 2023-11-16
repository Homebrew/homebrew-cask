cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.23.0"
  sha256 arm:   "296b298677e3a95cb535812c1f81a78a62873d802beca84f9475daef9c1e24c7",
         intel: "27c5ed640147eeda208cac1a3ab0e010213f49e7f4ce4ddb71e80653bcbb57d3"

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
