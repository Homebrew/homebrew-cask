cask '1password-cli' do
  version '1.1.0'
  sha256 'b4f4287c98dca3bde4f223df02e6c14a3d3abbd3db0a84b33bfdbbb4a4587ef3'

  # cache.agilebits.com/dist/1P/op/pkg/ was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.pkg"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  pkg "op_darwin_amd64_v#{version}.pkg"

  uninstall pkgutil: 'com.1password.op'

  zap trash: '~/.op'
end
