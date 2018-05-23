cask '1password-cli' do
  version '0.4.1'
  sha256 '1f93f2d2dc2c6c69c3b8f5636bab12f3d95da34d9e3ce3cac3ed57143b738028'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI',
          checkpoint: '3a3bd8fb22d11ff30803235b7f49f1522676f4d82381e6ed4e1c243d75198ce6'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'
  gpg 'op.sig', key_url: 'https://keybase.io/1password/pgp_keys.asc'

  binary 'op'

  zap trash: '~/.op'
end
