cask 'aquamacs' do
  version '3.3'
  sha256 '7356ee7df44ce23a0946c247039dd25b490eeec01b80f1254e1baf4669d25d59'

  # github.com/davidswelt/aquamacs-emacs was verified as official when first introduced to the cask
  url "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-#{version}/Aquamacs-Emacs-#{version}.dmg"
  appcast 'https://github.com/davidswelt/aquamacs-emacs/releases.atom',
          checkpoint: 'ee0238e8727aac3b9438e9ab6b688ac3dfd22f1646434ea5c9c5bb462660f8d1'
  name 'Aquamacs'
  homepage 'http://aquamacs.org/'

  app 'Aquamacs.app'

  zap delete: '~/Library/Caches/Aquamacs Emacs'
end
