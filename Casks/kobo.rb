class Kobo < Cask
  version :latest
  sha256 :no_check

  url 'http://download.kobobooks.com/desktop/kobodesktop/kobosetup.dmg'
  homepage 'http://www.kobo.com/'

  app 'Kobo.app'
end
