cask 'emacs' do
  version '25.1'
  sha256 '5bd04c82d2a091a48d7b9b80a26fa31f64767f2e553440a556d12be5815e29ef'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/release',
          checkpoint: 'b9e7670d7a2bd49a51d282a71f739adca891cf4201a0dcae90ac4895ae403fa1'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ctags"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"
end
