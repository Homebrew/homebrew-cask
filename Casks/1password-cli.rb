cask '1password-cli' do
  version '0.3'
  sha256 '342663c3870a4e869e7217b58bf091037e9cb9d88444edcab67ce90fe328a848'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI',
          checkpoint: '2d2962df502821be5724bf5e1289e2a6725cbbbc4c1a215c27bd23150f257481'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'
  gpg 'op.sig', key_url: 'https://keybase.io/1password/pgp_keys.asc'

  binary 'op'

  zap trash: '~/.op'
end
