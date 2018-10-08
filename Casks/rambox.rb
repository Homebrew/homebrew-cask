cask 'rambox' do
  version '0.6.1'
  sha256 'aa9d20ecfef8a8c1f2c2e9c55917e447bb2cdb0b58870eb6abd00cd66b9089c2'

  # github.com/ramboxapp/community-edition was verified as official when first introduced to the cask
  url "https://github.com/ramboxapp/community-edition/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/ramboxapp/community-edition/releases.atom'
  name 'Rambox'
  homepage 'https://rambox.pro/'

  app 'Rambox.app'

  uninstall login_item: 'Rambox'
end
