cask :v1 => 'keyboard-maestro' do
  version :latest
  sha256 :no_check

  url 'http://www.keyboardmaestro.com/action/download?km-kmi-2-b'
  homepage 'http://www.keyboardmaestro.com/'
  license :unknown

  app 'Keyboard Maestro.app'
end
