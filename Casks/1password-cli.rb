cask '1password-cli' do
  version '0.5.5'
  sha256 '5e47ee0f1801d178818056eae9752d332ee69fbd0d96d49b3087a098b49a5db0'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  binary 'op'

  zap trash: '~/.op'
end
