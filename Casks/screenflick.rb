cask :v1 => 'screenflick' do
  version :latest
  sha256 :no_check

  url 'http://www.araelium.com/screenflick/downloads/Screenflick.dmg'
  homepage 'http://www.araelium.com/screenflick/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Screenflick.app'
end
