cask 'phew' do
  version '1.0'
  sha256 'f4d6c78f98926b5e84bdbba68e06f5646545af15623807df26a7715e3397203d'

  url 'https://sveinbjorn.org/files/software/phew/Phew-1.0.zip'
  appcast 'https://sveinbjorn.org/files/appcasts/PhewAppcast.xml',
          checkpoint: 'c413dc2541ade9496867e6e16a8915de2692e22b07773e02e27e3a1d85680c26'
  name 'Phew - FLIF Image Viewer and QuickLook plugin'
  homepage 'https://sveinbjorn.org/phew'

  auto_updates true

  app 'Phew.app'

  caveats 'To install the QuickLook plugin, look in the File menu.'
end
