cask '1password-cli' do
  version '0.5.5'
  sha256 'e4ea329debcf991434d90728fa3cba531bce5449a08883d3530dfeb796fc3a3b'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  binary 'op'

  zap trash: '~/.op'
end
