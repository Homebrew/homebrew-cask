cask '1password-cli' do
  version '0.4'
  sha256 '7f024e5afc9cadc2d8134cb58e469821605e72342977c38c951d5a6d2443b656'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI',
          checkpoint: 'bb40e66a9ca1b9b959644d37441377aaddb91e08c279dacf90bf905de0dc10e6'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'
  gpg 'op.sig', key_url: 'https://keybase.io/1password/pgp_keys.asc'

  binary 'op'

  zap trash: '~/.op'
end
