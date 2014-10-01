class Emacs < Cask
  version '24.3'
  sha256 '92b3a6dd0a32b432f45ea925cfa34834c9ac9f7f0384c38775f6760f1e89365a'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal-10.6.8.dmg"
  homepage 'http://emacsformacosx.com/'
  license :oss

  app 'Emacs.app'
end
