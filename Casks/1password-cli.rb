cask "1password-cli" do
  version "1.7.0"
  sha256 "d65a5a80a083e1eea456572dec4dc206d0ba852ebb769c1eabdf67f9be11da74"

  # cache.agilebits.com/dist/1P/op/pkg/ was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast "https://app-updates.agilebits.com/product_history/CLI"
  name "1Password CLI"
  desc "Command-line helper for the 1Password password manager"
  homepage "https://support.1password.com/command-line/"

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
