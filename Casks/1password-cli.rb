cask '1password-cli' do
  version '0.7.0'
  sha256 '39d5a52b6da02dd889c57214e8a3fae9d0ec885c52dffe79de1c08b2338bd103'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  binary 'op'

  zap trash: '~/.op'
end
