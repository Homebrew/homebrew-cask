cask '1password-cli' do
  version '0.9.3'
  sha256 '95930bea6946430ecf6b3a1ac1698c8e1142e74046cac2cd1825ec74620d4b45'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: 'com.1password.op'

  zap trash: '~/.op'
end
