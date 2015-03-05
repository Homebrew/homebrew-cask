cask :v1 => 'keyboard-cleaner' do
  version :latest
  sha256 :no_check

  url 'http://jan.prima.de/Keyboard_Cleaner.zip'
  homepage 'http://jan.prima.de/~jan/plok/archives/48-Keyboard-Cleaner.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Keyboard Cleaner.app'
end
