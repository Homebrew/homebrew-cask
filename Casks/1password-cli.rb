cask '1password-cli' do
  version '0.2.1'
  sha256 'fd15c2c0e429623e3d0bff17f7f94867cd5d8b55d10f69076c2ec277da755d77'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI',
          checkpoint: '869d4d4fa733f66ac0b01f7dd98ace84984b5afec7e7adbfa1e6fd13b474dc41'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'
  gpg 'op.sig', key_url: 'https://keybase.io/1password/pgp_keys.asc'

  binary 'op'

  zap trash: '~/.op'
end
