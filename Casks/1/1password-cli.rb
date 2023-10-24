cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.22.0"
  sha256 arm:   "b9ae52df3003216b454f6ac0a402c71bcfb4804eafb3ee3593a84a2002930d27",
         intel: "63ea76fa032d97f071c97043256e012b2e7dfa7da04374a5ec1a8fc2dd0ec1be"

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
