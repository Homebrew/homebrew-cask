cask '1password-cli' do
  version '0.1.1'
  sha256 '95eb4cfd62a5bf1eab99d4acb24ab9229fc4dfb16a931dd7f9628f88b54c1fc7'

  # cache.agilebits.com/dist/1P/op/pkg was verified as official when first introduced to the cask
  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_darwin_amd64_v#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/CLI',
          checkpoint: 'a0c73938742c33399b0d408dac38e5aaa23a56e8a76ba0603876398f7cc38ccb'
  name '1Password CLI'
  homepage 'https://support.1password.com/command-line/'
  gpg 'op.sig', key_url: 'https://keybase.io/1password/pgp_keys.asc'

  binary 'op'

  zap trash: '~/.op'
end
