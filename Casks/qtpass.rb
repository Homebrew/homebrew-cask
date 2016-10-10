cask 'qtpass' do
  version '1.1.4'
  sha256 '46b1ec021bd4defbd407e74cb35eaeb93f2cc12b1214987f3d58e3dfec790efd'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: '96b00beb82f888bbee5f39f9251b59a3fda77de19cc5adfc52caa43711a97f46'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  license :gpl

  app 'QtPass.app'
end
