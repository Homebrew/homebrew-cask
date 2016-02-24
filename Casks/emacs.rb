cask 'emacs' do
  version '24.5-1'
  sha256 'c99c3def07886c0897c7c4bfc4a19338ea3d5bbcc2986d48be98aae1401f5830'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :oss

  app 'Emacs.app'
  binary 'Emacs.app/Contents/MacOS/bin/emacsclient', target: 'emacsclient'
  binary 'Emacs.app/Contents/MacOS/bin/ctags', target: 'ctags'
  binary 'Emacs.app/Contents/MacOS/bin/grep-changelog', target: 'grep-changelog'
  binary 'Emacs.app/Contents/MacOS/bin/ebrowse', target: 'ebrowse'
  binary 'Emacs.app/Contents/MacOS/bin/etags', target: 'etags'
end
