cask "1password-cli" do
  version "1.12.2"
  sha256 "c46ffa619764271af93f2f74ae42321b898ae34c854e63527e287d8cedae17ee"

  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_apple_universal_v#{version}.pkg",
      verified: "cache.agilebits.com/dist/1P/op/pkg/"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://support.1password.com/command-line/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/CLI"
    regex(%r{href=.*?/op_apple_universal[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
