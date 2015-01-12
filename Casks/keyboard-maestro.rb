cask :v1 => 'keyboard-maestro' do
  version :latest
  sha256 :no_check

  url 'http://www.keyboardmaestro.com/action/download?km-kmi-2-b'
  name 'Keyboard Maestro'
  homepage 'http://www.keyboardmaestro.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Keyboard Maestro.app'
end
