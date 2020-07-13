cask '1password-cli' do
  version '1.2.1'
  sha256 '85ddca70d3437d01d094f19dd23e54299139f127e323d28775a54cde9e839741'

  # cache.agilebits.com/dist/1P/op/pkg/ was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: 'com.1password.op'

  zap trash: '~/.op'
end
