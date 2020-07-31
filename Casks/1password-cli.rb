cask "1password-cli" do
  version "1.4.0"
  sha256 "03783d00d586dc0d9b899226cb44a34daba1b2eb7c67f9245407e2ba9bf25786"

  # cache.agilebits.com/dist/1P/op/pkg/ was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast "https://app-updates.agilebits.com/product_history/CLI"
  name "1Password CLI"
  homepage "https://support.1password.com/command-line/"

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
