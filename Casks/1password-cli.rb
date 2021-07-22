cask "1password-cli" do
  version "1.11.1"
  sha256 "bb610768238366bb2a0ed5e99a57db388dbaf52de3008b42bdae739525c9830d"

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
