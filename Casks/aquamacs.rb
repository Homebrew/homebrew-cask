cask 'aquamacs' do
  version '3.3'
  sha256 '7356ee7df44ce23a0946c247039dd25b490eeec01b80f1254e1baf4669d25d59'

  # github.com/davidswelt/aquamacs-emacs was verified as official when first introduced to the cask
  url "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-#{version}/Aquamacs-Emacs-#{version}.dmg"
  appcast 'https://github.com/davidswelt/aquamacs-emacs/releases.atom',
          checkpoint: 'a40804fd3ecb2089f76cc5bac7fc6bbe5e4d49e023dd2099b4e9b4565e26f651'
  name 'Aquamacs'
  homepage 'http://aquamacs.org/'

  app 'Aquamacs.app'

  zap trash: '~/Library/Caches/Aquamacs Emacs'
end
