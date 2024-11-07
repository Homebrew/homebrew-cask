cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.30.3"
  sha256 arm:   "0472133a09a0596119543c0ee7def0b3c08646354432516a18dbfe831d536c88",
         intel: "79fa39079b038bfefa8dafbc9e6cd1540ad869532ddbb6cf0a0b829edc7f4d48"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip",
      verified: "cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/CLI2"
    regex(%r{href=.*?/op_apple_universal[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  conflicts_with cask: [
    "1password-cli@1",
    "1password-cli@beta",
  ]

  binary "op"

  zap trash: "~/.op"
end
