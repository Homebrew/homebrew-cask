cask '1password-cli' do
  version '0.10.0'
  sha256 '6b188ad11b2e670c8bd56f3d7ac535e0943d62a9e738fc04dddfbc73a0addd8f'

  # cache.agilebits.com/dist/1P/op/pkg/ was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: 'com.1password.op'

  zap trash: '~/.op'
end
