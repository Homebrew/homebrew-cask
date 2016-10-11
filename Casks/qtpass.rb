cask 'qtpass' do
  version '1.1.4'
  sha256 '46b1ec021bd4defbd407e74cb35eaeb93f2cc12b1214987f3d58e3dfec790efd'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: 'ff499dc0c1c79de926d52e62cfb7e2f4a8c07a27d69b1c15df140bec9b0cf52f'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  app 'QtPass.app'
end
