cask '1password-cli' do
  version '0.5.7'
  sha256 'f382de2e5682c8f6a935123a9401cb77db6680233c80c5e9118cfa70b3f1959a'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  binary 'op'

  zap trash: '~/.op'
end
