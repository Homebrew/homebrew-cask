cask '1password-cli' do
  version '1.2.0'
  sha256 '26ce8d098d083ae558742e40eff1b7869ddf268d94a5cb8aac72b1574a748569'

  # cache.agilebits.com/dist/1P/op/pkg/ was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: 'com.1password.op'

  zap trash: '~/.op'
end
