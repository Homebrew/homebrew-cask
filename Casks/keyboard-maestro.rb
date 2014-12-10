cask :v1 => 'keyboard-maestro' do
  version :latest
  sha256 :no_check

  url 'http://www.keyboardmaestro.com/action/download?km-kmi-2-b'
  homepage 'http://www.keyboardmaestro.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Keyboard Maestro.app'
end
