cask '1password-cli' do
  version '0.2'
  sha256 'a3d36a67fa3cdd6c6869d2c0e3d2d369e75a1f6ce3724454f467db0944c7a8ba'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI',
          checkpoint: 'd4a70e7c8b221f5e1ff36d543175b3332523c0b9782b5663279e8245daf87846'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'
  gpg 'op.sig', key_url: 'https://keybase.io/1password/pgp_keys.asc'

  binary 'op'

  zap trash: '~/.op'
end
