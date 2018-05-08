cask 'keepassxc' do
  version '2.3.2'
  sha256 '3fa579b69c8c8122e2afc83185627c11b2ced414dbe21c744a5b51a145ef6b43'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: '27fd3308bae9960943765a075f22b094548706341b813841e8a2529e344a417e'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'
  gpg "#{url}.sig", key_url: 'https://keepassxc.org/keepassxc_master_signing_key.asc'

  app 'KeePassXC.app'

  zap trash: '~/.keepassxc'
end
