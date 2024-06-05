cask "1password-cli@beta" do
  version "2.30.0-beta.02"
  sha256 "f3ac49de6009b86e9b279512a9feab3b22268594cad44136ed202357b13ecb86"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg",
      verified: "cache.agilebits.com/dist/1P/op2/pkg/"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://developer.1password.com/docs/cli"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/CLI2"
    regex(%r{href=.*?/op_apple_universal[._-]v?(\d+(?:\.\d+)+-beta\.\d+)\.pkg}i)
  end

  conflicts_with cask: [
    "1password-cli",
    "1password-cli@1",
  ]

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.config/op"
end
