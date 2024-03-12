cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.25.1"
  sha256 arm:   "1de5bf453f7ed7fdbe940f39b6d027ebfa2aaf0dabc07f9b4afd4e658eb79bab",
         intel: "0a9c7da62212916635b2737a9e1567201eb18bceb4ea8bab9a80366ae25e5475"

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
