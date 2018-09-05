cask 'aquamacs' do
  version '3.4'
  sha256 '9c4ec15ac7f440a3aa6ea4346543f4550f8e48962a103b49ee1d6f240d16686e'

  # github.com/davidswelt/aquamacs-emacs was verified as official when first introduced to the cask
  url "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-#{version}/Aquamacs-Emacs-#{version}.dmg"
  appcast 'https://github.com/davidswelt/aquamacs-emacs/releases.atom'
  name 'Aquamacs'
  homepage 'http://aquamacs.org/'

  app 'Aquamacs.app'

  zap trash: '~/Library/Caches/Aquamacs Emacs'
end
