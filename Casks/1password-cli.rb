cask "1password-cli" do
  version "1.10.3"
  sha256 "4935e78c19b867befad34d033a305ad6461fd6132072cfe1fa652a56e6d3c834"

  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg",
      verified: "cache.agilebits.com/dist/1P/op/pkg/"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://support.1password.com/command-line/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/CLI"
    regex(%r{href=.*?/op_darwin_amd64[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
