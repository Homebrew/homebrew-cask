cask '1password-cli' do
  version '0.6.2'
  sha256 'f439ce1eff1417b50e8ef91b9a84bd37997c30901746a7825fbe291c9eac3708'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'

  binary 'op'

  zap trash: '~/.op'
end
