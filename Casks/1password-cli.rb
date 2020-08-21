cask "1password-cli" do
  version "1.5.0"
  sha256 "95fb97060ea0cf62244776442fda3f7b9e7cee74ab15c8531a636fd934ead99e"

  # cache.agilebits.com/dist/1P/op/pkg/ was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast "https://app-updates.agilebits.com/product_history/CLI"
  name "1Password CLI"
  homepage "https://support.1password.com/command-line/"

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
