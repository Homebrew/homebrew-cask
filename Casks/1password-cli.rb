cask "1password-cli" do
  version "1.9.0"
  sha256 "d250464386c32b90039d8c7f579a5c60e2b42d4124ce15d90558bdcd5de9f4c3"

  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg",
      verified: "cache.agilebits.com/dist/1P/op/pkg/"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://support.1password.com/command-line/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/CLI"
    strategy :page_match
    regex(%r{href=.*?/op_darwin_amd64_v?(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
